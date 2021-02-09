(:~ 2. For each different course, return an element tagged course with the course title and all the instructor names that teach this course. ~:)
<root>&#xa;
{
    let $titles := distinct-values(doc("reed.xml")/root/course/title)
    for $title in $titles
    return(<course>
        {
            '&#xa;',<title>{$title}</title>,'&#xa;',

            for $c in doc("reed.xml")/root/course
            where $c/title = $title
            let $instructor := $c/instructor
            return({$instructor}, '&#xa;')
        }
    </course>, '&#xa;&#xa;')
}
</root>