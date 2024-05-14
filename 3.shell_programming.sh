# script 파일 생성
touch myscript.sh

####실습########


# if문
if [ 1 -gt 2 ]; then #1>2
    echo "hello world1"
else
    echo "hello world2"
fi

# if문과 변수 활용, 파일(-f)/디렉토리(-d) 존재 여부 확인
file_name="second_file.txt" # = 앞에 띄어쓰기 있음 명령어 안 먹힐 것
if [ -f "$file_name" ]; then
    echo "$file_name exists"
else  
    echo "$file_name is not exist"
fi

# for문 기본
for a in {1..100} #1~100까지
do
    echo "hello world$a"
done
####실습예제
echo "start"
directory=test_dir
if [ -d "$directory" ]; then
    cd "$directory/"
else
    mkdir "$directory"
    cd "$directory/"
fi
echo "end"

if [ -f test4.txt ]; then
    echo "exist"
else
    touch test4.txt
fi

# if문과 변수 활용, 파일(-f) / 디렉토리(-d) 존재 여부 확인
file_name="second_file.txt"
if [ -f "$file_name" ]; then # $ => 변수 불러오기
    echo "$file_name exists"
else
    echo "$file_name does not exist"
fi
# for문
for a in {1..100}
do
   echo "hello world$a" >> test4.txt
done

# if와 for문 응용 실습
echo "start"
if [ -d test_dir ]; then
        cd test_dir
else
        mkdir test_dir
        cd test_dir
fi

echo "end"

if [ -f test4.txt ]; then
        echo "test4.txt exists"
else
        touch test4.txt
        for a in {1..100}
        do
                echo "hello world$a" >> test4.txt
        done
fi

#for문 활용한 count 세기
count=0
for a in {1..100}
do
    ((count++)) #여기서는 (())이거 씌워줘야해
done
echo "count is $count"

## for문 활용한 모든 파일, directory 목록 출력하기
for a in *
do
    echo "a is $a"
done

## for문 활용한 file의 개수와 그외의 파일의 개수 세기
dir_count=0
others=0
for a in *
do
    if [ -d "$a" ];then
        ((dir_count++))
    else
        ((others++))
    fi
    echo "dir_count is $dir_count"
    echo "others is $others"
done

# for문 응용 실습
# 특정 디렉토리 안에 directory와 그외 파일은 몇개인지 출력하는 프로그램 만들기

count=0
for a in {1..100}
do
        ((count++))
done
echo "count is $count"

for a in *
do
    echo "a is $a"
done

dir=0
others=0
for a in *
do
        if [ -d $a ]; then
                ((dir++))
        else
                ((others++))
        fi
done
echo "dir is $dir"
echo "else is $others"