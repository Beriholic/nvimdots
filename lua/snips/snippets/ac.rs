#![allow(unused_imports)]
use std::io::{stdin, stdout, BufWriter};
type Int=i64;
use std::io::prelude::*;

pub struct Scanner<R> {
    reader: R,
    buf_str: Vec<u8>,
    buf_iter: std::str::SplitAsciiWhitespace<'static>,
}

impl<R: BufRead> Scanner<R> {
    pub fn new(reader: R) -> Self {
        Self { reader, buf_str: Vec::new(), buf_iter: "".split_ascii_whitespace() }
    }
    pub fn next<T: std::str::FromStr>(&mut self) -> T {
        loop {
            if let Some(token) = self.buf_iter.next() {
                return token.parse().ok().expect("Failed parse");
            }
            self.buf_str.clear();
            self.reader.read_until(b'\n', &mut self.buf_str).expect("Failed read");
            self.buf_iter = unsafe {
                let slice = std::str::from_utf8_unchecked(&self.buf_str);
                std::mem::transmute(slice.split_ascii_whitespace())
            }
        }
    }
}

macro_rules! input {
    ($scanner:expr, $($r:tt)*) => {
        input_inne

r!{$scanner, $($r)*}
    };
}

macro_rules! input_inner {
    ($scanner:expr) => {};
    ($scanner:expr, ) => {};
    ($scanner:expr, $var:ident : $t:tt $($r:tt)*) => {
        let $var = read_value!($scanner, $t);
        input_inner!{$scanner $($r)*}
    };
}

macro_rules! read_value {
    ($scanner:expr, ( $($t:tt),* )) => {
        ( $(read_value!($scanner, $t)),* )
    };
    ($scanner:expr, [ $t:tt ]) => {{
        let len = read_value!($scanner, usize);
        read_value!($scanner, [$t; len])
    }};
    ($scanner:expr, [ $t:tt ; $len:expr ]) => {
        (0..$len).map(|_| read_value!($scanner, $t)).collect::<Vec<_>>()
    };
    ($scanner:expr, chars) => {
        read_value!($scanner, String).chars().collect::<Vec<char>>()
    };
    ($scanner:expr, $t:ty) => {
        $scanner.next::<$t>()
    };
}


fn main() {
    let mut scanner = Scanner::new(stdin().lock());
    let out =&mut BufWriter::new(stdout().lock());

}
