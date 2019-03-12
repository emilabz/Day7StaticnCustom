//
//  StudentInfoViewController.swift
//  Day7StaticnCustom
//
//  Created by MacStudent on 2019-03-11.
//  Copyright © 2019 Emil. All rights reserved.
//

import UIKit

class StudentInfoViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var studentarr=[Student]()
    
    
    @IBOutlet weak var tblVwStudent: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tblVwStudent.delegate=self
        self.tblVwStudent.dataSource=self
        getstudInfo()

        // Do any additional setup after loading the view.
    }
    func getstudInfo(){
        studentarr.append(Student(Fname:"Stu",Lname:"dent1",gender:"Male",result:"Pass"))
        studentarr.append(Student(Fname: "Stu", Lname: "dent2", gender: "Female", result: "Fail"))
        studentarr.append(Student(Fname: "Stu", Lname: "dent3", gender: "Female", result: "Fail"))
        studentarr.append(Student(Fname: "Stu", Lname: "dent4", gender: "Male", result: "Pass"))
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.studentarr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "studentcell", for: indexPath) as! StudentDetailsTableViewCell
        let student=studentarr[indexPath.row]
        cell.lblStudentFirstName.text=student.Fname
        cell.lblStudentLastName.text=student.Lname
        cell.lblStudentGender.text=student.gender
        cell.lblResult.text=student.result
        if cell.lblResult.text == "Pass"{
            cell.lblResult.textColor=UIColor.green
        }
        else{
            cell.lblResult.textColor=UIColor.red
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 172.0
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
