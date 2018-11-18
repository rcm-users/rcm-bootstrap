ls "$TESTDIR/../bin" | grep -v "\.in" | while read filename
do
  chmod +x "$TESTDIR/../bin"/$filename
done

export HOME="$PWD"
export PATH="$TESTDIR/../bin:$PATH"