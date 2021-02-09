(:~ 3. For each different department, display the department code and the number of courses taught by the department. ~:)
<root>&#xa;
{
    let $departments := distinct-values(doc("reed.xml")/root/course/subj)
    for $department in $departments
    let $count := count(doc("reed.xml")/root/course[subj = $department])
    order by $count
    return(<course>&#xa;<department>{$department}</department>&#xa;<count>{$count}</count>&#xa;</course>, '&#xa;&#xa;')
}
</root>