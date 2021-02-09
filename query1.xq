(:~ 1. For each MATH course taught in room LIB 204, return an element tagged course with the title, the instructor, the start, and the end times of the course. ~:)
<root>&#xa;
{
    for $course in doc("reed.xml")/root/course
    where $course/subj="MATH" and $course/place/building = "LIB" and $course/place/room = "204"
    return(<course>&#xa;{$course/title}&#xa;{$course/instructor}&#xa;{$course/time/start_time}&#xa;{$course/time/end_time}&#xa;</course>, '&#xa;&#xa;')
}
</root>