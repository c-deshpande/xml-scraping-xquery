(:~ 4. For each different instructor, return an element tagged instructor that contains the name of the instructor and the number of courses taught by the instructor. ~:)
<root>&#xa;
{
    let $instructors := distinct-values(doc("reed.xml")/root/course/instructor)
    for $instructor in $instructors
    let $count := count(doc("reed.xml")/root/course[instructor = $instructor])
    order by $count
    return(<instructor>&#xa;<name>{$instructor}</name>&#xa;<count>{$count}</count>&#xa;</instructor>, '&#xa;&#xa;')
}
</root>