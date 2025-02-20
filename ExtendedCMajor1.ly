\version "2.22.2"

\header {
  title = "Expanded Piano Piece in C Major"
  composer = "User & ChatGPT Collaboration"
}

\score {
  \new PianoStaff <<
    \new Staff = "RH" {
      \clef treble
      \key c \major
      \time 4/4
      \relative c' {
        % Section B: Expansion (Revised for better balance and rhythm)
        c4 d e f |
        g2 e4. d8 |
        a4 b c d |
        f2. d4 |
        c4 e g f |
        a2 g4 f |
        
        % Section C: Variation and return with rhythmic interest
        f8 e d c b4. c8 |
        d16 e f e d c b a b8 c d e |
        c4 d8 e f2 |
        g4 a b c |
        <c e g>2 <b d f>2 \bar "|."
      }
    }
    
    \new Staff = "LH" {
      \clef bass
      \key c \major
      \time 4/4
      \relative c {
        % Section B: More dynamic movement
        c8 e g c g e c e |
        d8 f a d a f d f |
        e4 g b g |
        f4 a c a |
        g8 b d b g d b g |
        c,4 e g e |
        
        % Section C: More interesting movement in LH
        f8 d a c g4. a8 |
        b16 c d c b a g f g8 a b c |
        f4 e8 d c2 |
        e4 d c g |
        <a c f>2 <g b d>2 \bar "|."
      }
    }
  >>
  
  \layout { }
  \midi { \tempo 4=80 }
}
