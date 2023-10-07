<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Events\AfterSheet;
use Maatwebsite\Excel\Events\BeforeSheet;
use App\Http\Controllers\angularnewdemo\api;

class VideoList implements FromCollection, WithHeadings, WithEvents
{
    /**
    * @return \Illuminate\Support\Collection
    */
    protected $data;
    protected $slno;
    protected $Healper;
    /**
     * Write code on Method
     *
     * @return response()
     */
    public function __construct($alldata)
    {
        $this->data = $alldata['data'];
        $this->slno = $alldata['slno'];
        $this->Healper = new api;
    }

    /**
     * Write code on Method
     *
     * @return response()
     */
    public function collection()
    {
       return $this->data;
      // return collect($this->data);
    }

    /**
     * Write code on Method
     *
     * @return response()
     */
    public function headings(): array
    {
        return [
            // 'EMPLOYEE TYPE',
            // 'EMPLOYEE CATEGORY',
            // 'CODE',
            // 'EMPLOYEE NAME',
            // 'DESIGNATION',
            // 'DEPARTMENT',
            // 'ACTIVE TYPE',
            // 'JOINING DATE'
        ];
    }

    /**
     * Write code on Method
     *
     * @return response()
     */ 
    public function registerEvents(): array
    {
    return [
        AfterSheet::class => function (AfterSheet $event) {
            $styleArray = [
                'alignment' => [
                    'horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER,
                ],
            ];
            $event->sheet->getDelegate()->getStyle('A1:C1')
                ->getFill()
                ->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID);
            $event->sheet->getDelegate()->getStyle('A1:C1')->applyFromArray($styleArray);
            $event->sheet->getDelegate()->getStyle('A1:C1')->getFont()->setSize(16);  
            $event->sheet->mergeCells('A1:C1')->setCellValue('A1', "VIDEO LIST");  

            $event->sheet->getDelegate()->getStyle('A2:C2')->applyFromArray($styleArray);
            $event->sheet->getDelegate()->getStyle('A2:C2')->getFont()->setSize(13);
            $event->sheet->getDelegate()->getStyle('A2:C2')
                ->getFill()
                ->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID)
                ->getStartColor()
                ->setARGB('f0f8ff');
            $event->sheet->mergeCells('A2:C2')->setCellValue('A2', "EXPORTED DATA OF ".date('Y-m-d'));
          

            $event->sheet->getDelegate()->getStyle('A3:C3')->applyFromArray($styleArray);
            $event->sheet->getDelegate()->getStyle('A3:C3')->getFont()->setSize(12)->getColor()->setARGB('1b55e2');
            $event->sheet->getDelegate()->getStyle('A3:C3')
                ->getFill()
                ->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID)
                ->getStartColor()
                ->setARGB('f5f3f3');
            $event->sheet->setCellValue('A3', "SL NO");
            $event->sheet->setCellValue('B3', "ID");
            $event->sheet->setCellValue('C3', "TITLE");
            $i=4;
            foreach($this->data as $key=>$val){
            $event->sheet->getDelegate()->getStyle('A'.$i.":C".$i)->applyFromArray($styleArray);
            $event->sheet->getDelegate()->getStyle('A'.$i)->getFont()->getColor()->setARGB('eb0000');
            $event->sheet->getDelegate()->getStyle('B'.$i)->getFont()->getColor()->setARGB('0fd419');
           
            $event->sheet->setCellValue('A'.$i, $this->slno++);
            $event->sheet->setCellValue('B'.$i, isset($val->id)?$val->id:"");
            $event->sheet->setCellValue('C'.$i, isset($val->title)?$val->title:"");
            $i++;
            }
        },
    ];
    }
}
 