## 21. Cool Print
```c
// printf, fflush, stdout:
#include <stdio.h>

// sleep (POSIX - Linux, macOS):
#include <unistd.h>

void screen_controls(void)
{
	// Clear entire screen:
	printf("\x1b[2J");

	// Move cursor to top-left:
	printf("\x1b[H");

	// Clear from cursor to end:
	printf("\x1b[0J");

	// Clear from beginning to cursor:
	printf("\x1b[1J");

	// Clear entire current line:
	printf("\x1b[2K");

	// Clear to end of line:
	printf("\x1b[0K");

	// Clear from beginning of line:
	printf("\x1b[1K");

	// ------------------------------------------------------------

	// Move to row 5, column 10:
	printf("\x1b[5;10H");

	// Move up 3 lines:
	printf("\x1b[3A");

	// Move down 3 lines:
	printf("\x1b[3B");

	// Move right 5 columns:
	printf("\x1b[5C");

	// Move left 5 columns:
	printf("\x1b[5D");

	// ------------------------------------------------------------

	// Save cursor position:
	printf("\x1b[s");

	// Move cursor:
	printf("\x1b[5;10H");

	// Restore cursor position:
	printf("\x1b[u");
}

void foreground_colors(void)
{
	printf("\n------ FOREGROUND COLORS ------\n");

	printf("\x1b[30mBlack\x1b[0m\n");
	printf("\x1b[31mRed\x1b[0m\n");
	printf("\x1b[32mGreen\x1b[0m\n");
	printf("\x1b[33mYellow\x1b[0m\n");
	printf("\x1b[34mBlue\x1b[0m\n");
	printf("\x1b[35mMagenta\x1b[0m\n");
	printf("\x1b[36mCyan\x1b[0m\n");
	printf("\x1b[37mWhite\x1b[0m\n");
}

void background_colors(void)
{
	printf("\n------ BACKGROUND COLORS ------\n");

	printf("\x1b[40m Black background \x1b[0m\n");
	printf("\x1b[41m Red background \x1b[0m\n");
	printf("\x1b[42m Green background \x1b[0m\n");
	printf("\x1b[43m Yellow background \x1b[0m\n");
	printf("\x1b[44m Blue background \x1b[0m\n");
	printf("\x1b[45m Magenta background \x1b[0m\n");
	printf("\x1b[46m Cyan background \x1b[0m\n");
	printf("\x1b[47m White background \x1b[0m\n");
}

void text_formatting(void)
{
	printf("\n------ TEXT FORMATTING ------\n");

	printf("\x1b[0mNormal text\x1b[0m\n");
	printf("\x1b[1mBold text\x1b[0m\n");
	printf("\x1b[2mDim text\x1b[0m\n");
	printf("\x1b[3mItalic text\x1b[0m\n");
	printf("\x1b[4mUnderlined text\x1b[0m\n");
	printf("\x1b[5mBlinking text\x1b[0m\n");
	printf("\x1b[7mInverted colors\x1b[0m\n");
	printf("\x1b[8mHidden text\x1b[0m\n");
	printf("\x1b[9mStrikethrough text\x1b[0m\n");
}

void advanced_colors(void)
{
	printf("\n------ ADVANCED COLORS ------\n");

	// 256-color foreground:
	printf("\x1b[38;5;196m256-color red\x1b[0m\n");
	printf("\x1b[38;5;208m256-color orange\x1b[0m\n");
	printf("\x1b[38;5;46m256-color green\x1b[0m\n");

	// RGB true color foreground:
	printf("\x1b[38;2;255;100;50mRGB orange text\x1b[0m\n");
	printf("\x1b[38;2;255;0;255mRGB pink text\x1b[0m\n");
	printf("\x1b[38;2;0;255;255mRGB cyan text\x1b[0m\n");

	// RGB true color background:
	printf("\x1b[48;2;0;100;255m RGB blue background \x1b[0m\n");
	printf("\x1b[48;2;255;100;50m RGB orange background \x1b[0m\n");
}

void color_combinations(void)
{
	printf("\n------ COLOR COMBINATIONS ------\n");

	// Bold + blink + red background + white text:
	printf("\x1b[1;5;41;37m WARNING \x1b[0m\n");

	// Bold + green background + black text:
	printf("\x1b[1;42;30m SUCCESS \x1b[0m\n");

	// Underline + blue background + yellow text:
	printf("\x1b[4;44;33m INFO \x1b[0m\n");

	// Bold + magenta background + white text:
	printf("\x1b[1;45;37m NOTICE \x1b[0m\n");

	// Other combinations: ↓
	printf("\x1b[1;33mYellow text\x1b[0m\n");
	printf("\x1b[35mPink / Magenta text\x1b[0m\n");
	printf("\x1b[36mLight cyan text\x1b[0m\n");

	printf("\x1b[43m Yellow background \x1b[0m\n");
	printf("\x1b[45m Pink background \x1b[0m\n");
	printf("\x1b[46m Cyan background \x1b[0m\n");
}

void colored_blocks(void)
{
	printf("\n------ COLORED BLOCKS ------\n");

	printf("\x1b[41m      \x1b[0m Red block\n");
	printf("\x1b[44m      \x1b[0m Blue block\n");
	printf("\x1b[47m      \x1b[0m White block\n");
	printf("\x1b[42m      \x1b[0m Green block\n");
	printf("\x1b[43m      \x1b[0m Yellow block\n");
	printf("\x1b[45m      \x1b[0m Magenta block\n");
	printf("\x1b[46m      \x1b[0m Cyan block\n");
}

void terminal_controls(void)
{
	printf("\n------ TERMINAL CONTROLS ------\n");

	// Hide cursor:
	printf("\x1b[?25l");
	fflush(stdout);
	sleep(1);

	// Show cursor:
	printf("\x1b[?25h");
	fflush(stdout);

	// Save cursor position:
	printf("\x1b[s");
	printf("Cursor position saved\n");
	fflush(stdout);
	sleep(1);

	// Restore cursor position:
	printf("\x1b[u");
	fflush(stdout);

	// Request cursor position (terminal response required):
	// printf("\x1b[6n");

	// Enter alternate screen:
	// printf("\x1b[?1049h");

	// Leave alternate screen:
	// printf("\x1b[?1049l");
}

int main(void)
{
	// Clear terminal and move to top-left:
	printf("\x1b[2J\x1b[H");
	fflush(stdout);

	// screen_controls();
	// fflush(stdout);

	// Header:
	printf("\x1b[1;36m");
	printf("------------------------------------------------------------\n");
	printf("      ANSI ESCAPE SEQUENCE DEMO      \n");
	printf("------------------------------------------------------------\n");
	printf("\x1b[0m");

	// Display all demonstrations:
	foreground_colors();
	background_colors();
	text_formatting();
	advanced_colors();
	color_combinations();
	colored_blocks();
	terminal_controls();

	// Final message:
	printf("\n");
	printf("\x1b[1;32m");
	printf("------------------------------------------------------------\n");
	printf("      DEMONSTRATION COMPLETE      \n");
	printf("------------------------------------------------------------\n");
	printf("\x1b[0m");
	fflush(stdout);

	return 0;
}
```