import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

var continents: [String] = ["Asia", "Europe", "Australia"] var Asia: [String] = ["India", "China", "Bangladesh", "Afghanistan"]

var Europe: [String] = ["UK", "France", "Italy", "Turkey"]

var Australia: [String] = ["Melbourne", "Perth", "Sydney", "Tonga"]

func numberOfSections (in tableView: UITableView) -> Int { return continents.count

}

func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { return Asia.count

if(section==0){

else if(section==1){

return Europe.count

} else{

return Australia.count

}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

let cell = tableView.dequeueReusableCell(withIdentifier: "reuseCell", for: indexPath)

if(indexPath.section==0){ cell.textLabel?.text = Asia [indexPath.row]

}

else if(indexPath.section==1){

cell.textLabel?.text = Europe [indexPath.row]

} else{

cell.textLabel?.text = Australia [indexPath.row]

}

return cell

}

func tableView(tableView: UITableView, titleForHeaderInSection section:

return continents[section] }

var value:String!

func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) { if(indexPath.section==0){

value=Asia[indexPath.row]

}

else if(indexPath.section==1){ value=Europe [indexPath.row]

} else{

value=Australia(indexPath.row)
