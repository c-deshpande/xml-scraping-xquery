(:~ 5. For each different instructor, return an element tagged instructor that contains the name of the instructor and the titles of all courses taught by the instructor. ~:)
<root>&#xa;
{
    let $instructors := distinct-values(doc("reed.xml")/root/course/instructor)
    for $instructor in $instructors
    return(<instructor>
        {
            '&#xa;',<name>{$instructor}</name>,'&#xa;',

            for $c in doc("reed.xml")/root/course
            where $c/instructor = $instructor
            let $title := $c/title
            return({$title}, '&#xa;')
        }
    </instructor>, '&#xa;&#xa;')
}
</root>