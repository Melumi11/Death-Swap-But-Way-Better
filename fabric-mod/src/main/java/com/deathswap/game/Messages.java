package com.deathswap.game;

import com.deathswap.util.Translator;
import net.minecraft.ChatFormatting;
import net.minecraft.network.chat.Component;
import net.minecraft.network.chat.MutableComponent;

/**
 * Exact player-facing text from the datapack, in both supported languages
 * ({@code Lang Core} 1 = English, 2 = Chinese). Each method mirrors a specific
 * {@code tellraw}/{@code title} line from the {@code ds:game/*} functions so the
 * mod reproduces the same wording, colours and bold/italic styling.
 *
 * <p>Colours/booleans are taken verbatim from the source JSON. Where a line is
 * not gated on {@code Lang Core} in the datapack (e.g. the "You warped to" text),
 * the same single string is used for both languages.
 */
public final class Messages {

    private Messages() {
    }

    private static MutableComponent lit(String text, ChatFormatting color, boolean bold) {
        return Component.literal(text).withStyle(s -> s.withColor(color).withBold(bold));
    }

    // ---- game/swap.mcfunction ----

    /** {@code >> Swapped! <<} / {@code >> 球员互换! <<} (gold action bar). */
    public static Component swapActionbar(boolean zh) {
        return lit(Translator.translate(zh, ">> Swapped! <<"), ChatFormatting.GOLD, false);
    }

    /**
     * {@code * You warped to: <name>} — green/bold prefix, non-bold name. This
     * line is not gated on language in the datapack (English text for all).
     */
    public static Component warpedTo(boolean zh, Component targetName) {
        return lit(Translator.translate(zh, "* You warped to: "), ChatFormatting.GREEN, true)
                .append(targetName.copy().withStyle(s -> s.withBold(false)));
    }

    /** Chinese-only extra swap line: {@code * 你已传送到该玩家所在位置 ^^} (green). */
    public static Component warpedToChinese() {
        return lit("* 你已传送到该玩家所在位置 ^^", ChatFormatting.GREEN, false);
    }

    // ---- game/game_start.mcfunction ----

    /** Title: {@code >> D.S. But Way Better! <<} (gold) — same for both languages. */
    public static Component startTitle(boolean zh) {
        return lit(Translator.translate(zh, ">> D.S. But Way Better! <<"), ChatFormatting.GOLD, false);
    }

    /** Subtitle: {@code Created by Jerries!} / Chinese equivalent (yellow). */
    public static Component startSubtitle(boolean zh) {
        return lit(Translator.translate(zh, "Created by Jerries!"), ChatFormatting.YELLOW, false);
    }

    /** {@code Map created by Jerries (Map version 1.0.3)} / Chinese equivalent. */
    public static Component mapCredit(boolean zh) {
        return lit(Translator.translate(zh, "Map created by Jerries"), ChatFormatting.YELLOW, true)
                .append(Component.literal(Translator.translate(zh, " (Map version 1.0.3)"))
                        .withStyle(s -> s.withColor(ChatFormatting.YELLOW).withBold(false).withItalic(true)));
    }

    /** {@code Additional datapack work by TheWorfer27 and Melumi11} / Chinese (green italic). */
    public static Component additionalCredit(boolean zh) {
        return Component.literal(Translator.translate(zh, "Additional datapack work by TheWorfer27 and Melumi11"))
                .withStyle(s -> s.withColor(ChatFormatting.GREEN).withItalic(true));
    }

    // ---- game/warping_all.mcfunction ----

    /** {@code >> Spreading players... <<} / {@code >> 球员搬迁... <<} (gold action bar). */
    public static Component spreadingActionbar(boolean zh) {
        return lit(Translator.translate(zh, ">> Spreading players... <<"), ChatFormatting.GOLD, false);
    }

    // ---- game/player_died.mcfunction ----

    /** Broadcast: {@code >> <name> > DIED! Lost a life!} (dark_red/red, bold). */
    public static Component diedBroadcast(boolean zh, Component name) {
        return lit(">> ", ChatFormatting.DARK_RED, true)
                .append(name.copy().withStyle(s -> s.withBold(false)))
                .append(lit(Translator.translate(zh, " > DIED! Lost a life!"), ChatFormatting.RED, true));
    }

    /** Title: {@code >> YOU DIED! <<} / {@code >> 你死了! <<} (red). */
    public static Component diedTitle(boolean zh) {
        return lit(Translator.translate(zh, ">> YOU DIED! <<"), ChatFormatting.RED, false);
    }

    /** Subtitle: {@code -1 Life!} / {@code -1 生命!} (gold). */
    public static Component diedSubtitle(boolean zh) {
        return lit(Translator.translate(zh, "-1 Life!"), ChatFormatting.GOLD, false);
    }

    // ---- game/player_eliminated.mcfunction ----

    /** Subtitle: {@code >> ELIMINATED! <<} / {@code >> 被淘汰! <<} (red). */
    public static Component eliminatedSubtitle(boolean zh) {
        return lit(Translator.translate(zh, ">> ELIMINATED! <<"), ChatFormatting.RED, false);
    }

    // ---- game/winner.mcfunction ----

    /** Title: {@code >> <name> Won! <<} (green), name inherits the surrounding style. */
    public static Component winnerTitle(boolean zh, Component name) {
        return lit(">> ", ChatFormatting.GREEN, false)
                .append(name.copy())
                .append(lit(Translator.translate(zh, " Won! <<"), ChatFormatting.GREEN, false));
    }

    /** Subtitle (aqua): English / Chinese victory line. */
    public static Component winnerSubtitle(boolean zh) {
        return lit(Translator.translate(zh, "They survived the way better death swap!"),
                ChatFormatting.AQUA, false);
    }

    /**
     * Broadcast: {@code \n>>> <name> survived the longest and won the game! <<<\n}
     * (green; bold in English, non-bold in Chinese) / Chinese equivalent.
     */
    public static Component winnerBroadcast(boolean zh, Component name) {
        boolean bold = !zh; // EN line is bold, ZH line is not (matches the source JSON)
        return lit("\n>>> ", ChatFormatting.GREEN, bold)
                .append(name.copy().withStyle(s -> s.withBold(false)))
                .append(lit(Translator.translate(zh, " survived the longest and won the game! <<<\n"),
                        ChatFormatting.GREEN, bold));
    }

    // ---- extra/make_newbie_spec.mcfunction (late joiner) ----

    /** Broadcast: {@code >> <name> joined the server mid-game ...} (gray/gold, bold). */
    public static Component joinedMidGame(boolean zh, Component name) {
        return lit(">> ", ChatFormatting.GRAY, true)
                .append(name.copy().withStyle(s -> s.withColor(ChatFormatting.GOLD).withBold(false)))
                .append(lit(Translator.translate(zh, " joined the server mid-game and will spectate until the game is over!"),
                        ChatFormatting.GRAY, true));
    }

    /** Title: {@code You will spectate} / {@code 你将作为旁观者} (gray). */
    public static Component spectateTitle(boolean zh) {
        return lit(Translator.translate(zh, "You will spectate"), ChatFormatting.GRAY, false);
    }

    /** Subtitle: {@code Until this game finishes!} / Chinese (white). */
    public static Component spectateSubtitle(boolean zh) {
        return lit(Translator.translate(zh, "Until this game finishes!"), ChatFormatting.WHITE, false);
    }

    // ---- settings/lang_chinese.mcfunction & lang_english.mcfunction ----

    /** Switch title: {@code 语言：中文!} / {@code LANGUAGE: English!} (light_purple). */
    public static Component langTitle(boolean toChinese) {
        return lit(Translator.translate(toChinese, "LANGUAGE: English!"), ChatFormatting.LIGHT_PURPLE, false);
    }

    /** Switch subtitle (plain white), bilingual either way. */
    public static Component langSubtitle(boolean toChinese) {
        return Component.literal(toChinese
                ? "游戏将使用中文! / Game will be in Chinese!"
                : "Game will be in English! / 游戏将使用英语!");
    }

    /** Banner: {@code [=-=-=-= Language: English =-=-=-=]} / Chinese, all bold. */
    public static Component langBanner(boolean toChinese) {
        return lit("[=-=-=-= ", ChatFormatting.LIGHT_PURPLE, true)
                .append(lit(Translator.translate(toChinese, "Language: English"), ChatFormatting.WHITE, true))
                .append(lit(" =-=-=-=]", ChatFormatting.LIGHT_PURPLE, true));
    }

    /** Chinese-only translator note shown when switching to Chinese (white). */
    public static Component langTranslatorNote() {
        return Component.literal("我是来自加利福尼亚州的英语母语人士. 不过, 这张地图的大部分内容是我使用谷歌翻译翻译成中文的. 我已经核实了所有翻译的准确性, 但可能存在一些语法错误!")
                .withStyle(s -> s.withColor(ChatFormatting.WHITE));
    }

    /**
     * Item 72 broadcast: {@code >> <name> --> Switched the game's language ...}.
     * Green prefix/name/arrow, light_purple bilingual tail (order flips by target).
     */
    public static Component langSwitched(boolean toChinese, Component name) {
        String tail = toChinese
                ? "Switched the game's language to Chinese! 已将游戏语言切换为中文!"
                : "已将游戏语言切换为英语! Switched the game's language to English!";
        return lit(">> ", ChatFormatting.GREEN, false)
                .append(name.copy().withStyle(s -> s.withBold(false)))
                .append(lit(" --> ", ChatFormatting.GREEN, false))
                .append(lit(tail, ChatFormatting.LIGHT_PURPLE, false));
    }

    // ---- items/give_items.mcfunction (new item offer) ----

    /** Subtitle: {@code >> New items! <<} / {@code >> 你获得了新物品! <<} (green). */
    public static Component newItemsSubtitle(boolean zh) {
        return lit(Translator.translate(zh, ">> New items! <<"), ChatFormatting.GREEN, false);
    }

    /** The "you got a new set of items" tellraw (green, bold), bilingual. */
    public static Component newItemsChat(boolean zh) {
        return lit(Translator.translate(zh,
                "<< You got a new set of items! They will expire in 45 seconds if you don't use one of them! You can only use one! >>"),
                ChatFormatting.GREEN, true);
    }

    /** Round-robin "items blocked" reminder ({@code ** Items blocked!}, red bold). */
    public static Component itemsBlocked(boolean zh) {
        return lit(Translator.translate(zh, "** Items blocked!"), ChatFormatting.RED, true);
    }

    // ---- game/clock.mcfunction (swap countdown) ----

    /** Title: {@code >> Swapping <<} / {@code >> 交换中 <<} (gold). */
    public static Component swappingTitle(boolean zh) {
        return lit(Translator.translate(zh, ">> Swapping <<"), ChatFormatting.GOLD, false);
    }

    /**
     * Countdown subtitle for a given number of whole seconds remaining, matching
     * the exact strings/colours in clock.mcfunction.
     */
    public static Component swappingSubtitle(boolean zh, int seconds) {
        return switch (seconds) {
            case 60 -> lit(Translator.translate(zh, "In 1 minute"), ChatFormatting.YELLOW, false);
            case 30 -> lit(Translator.translate(zh, "In 30 seconds"), ChatFormatting.YELLOW, false);
            case 10 -> lit(Translator.translate(zh, "In 10 seconds"), ChatFormatting.YELLOW, false);
            case 5 -> lit(Translator.translate(zh, "In 5"), ChatFormatting.YELLOW, false);
            case 4 -> lit(Translator.translate(zh, "In 4"), ChatFormatting.YELLOW, false);
            case 3 -> lit(Translator.translate(zh, "In 3"), ChatFormatting.YELLOW, false);
            case 2 -> lit(Translator.translate(zh, "In 2"), ChatFormatting.GOLD, false);
            case 1 -> lit(Translator.translate(zh, "In 1"), ChatFormatting.RED, false);
            default -> lit(Translator.translate(zh, "In ") + seconds, ChatFormatting.YELLOW, false);
        };
    }
}
