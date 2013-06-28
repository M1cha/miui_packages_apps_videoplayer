.class public Lcom/duokan/TimedText;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duokan/TimedText$HyperText;,
        Lcom/duokan/TimedText$Karaoke;,
        Lcom/duokan/TimedText$Font;,
        Lcom/duokan/TimedText$Style;,
        Lcom/duokan/TimedText$Justification;,
        Lcom/duokan/TimedText$TextPos;,
        Lcom/duokan/TimedText$CharPos;,
        Lcom/duokan/TimedText$Text;
    }
.end annotation


# static fields
.field private static final FIRST_PRIVATE_KEY:I = 0x65

.field private static final FIRST_PUBLIC_KEY:I = 0x1

.field public static final KEY_BACKGROUND_COLOR_RGBA:I = 0x3

.field public static final KEY_DISPLAY_FLAGS:I = 0x1

.field private static final KEY_END_CHAR:I = 0x68

.field private static final KEY_FONT_ID:I = 0x69

.field private static final KEY_FONT_SIZE:I = 0x6a

.field private static final KEY_GLOBAL_SETTING:I = 0x65

.field public static final KEY_HIGHLIGHT_COLOR_RGBA:I = 0x4

.field private static final KEY_LOCAL_SETTING:I = 0x66

.field public static final KEY_SCROLL_DELAY:I = 0x5

.field private static final KEY_START_CHAR:I = 0x67

.field public static final KEY_START_TIME:I = 0x7

.field public static final KEY_STRUCT_BLINKING_TEXT_LIST:I = 0x8

.field public static final KEY_STRUCT_FONT_LIST:I = 0x9

.field public static final KEY_STRUCT_HIGHLIGHT_LIST:I = 0xa

.field public static final KEY_STRUCT_HYPER_TEXT_LIST:I = 0xb

.field public static final KEY_STRUCT_JUSTIFICATION:I = 0xf

.field public static final KEY_STRUCT_KARAOKE_LIST:I = 0xc

.field public static final KEY_STRUCT_STYLE_LIST:I = 0xd

.field public static final KEY_STRUCT_TEXT:I = 0x10

.field public static final KEY_STRUCT_TEXT_POS:I = 0xe

.field public static final KEY_STYLE_FLAGS:I = 0x2

.field private static final KEY_TEXT_COLOR_RGBA:I = 0x6b

.field public static final KEY_WRAP_TEXT:I = 0x6

.field private static final LAST_PRIVATE_KEY:I = 0x6b

.field private static final LAST_PUBLIC_KEY:I = 0x10

.field private static final TAG:Ljava/lang/String; = "TimedText"


# instance fields
.field private mBackgroundColorRGBA:I

.field private mBlinkingPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duokan/TimedText$CharPos;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayFlags:I

.field private mFontList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duokan/TimedText$Font;",
            ">;"
        }
    .end annotation
.end field

.field private mHighlightColorRGBA:I

.field private mHighlightPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duokan/TimedText$CharPos;",
            ">;"
        }
    .end annotation
.end field

.field private mHyperTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duokan/TimedText$HyperText;",
            ">;"
        }
    .end annotation
.end field

.field private mJustification:Lcom/duokan/TimedText$Justification;

.field private mKaraokeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duokan/TimedText$Karaoke;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyObjectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mParcel:Landroid/os/Parcel;

.field private mScrollDelay:I

.field private mStyleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duokan/TimedText$Style;",
            ">;"
        }
    .end annotation
.end field

.field private mTextPos:Lcom/duokan/TimedText$TextPos;

.field private mTextStruct:Lcom/duokan/TimedText$Text;

.field private mWrapText:I


# direct methods
.method public constructor <init>([B)V
    .locals 3
    .parameter "obj"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 292
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/duokan/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    .line 59
    iput v2, p0, Lcom/duokan/TimedText;->mDisplayFlags:I

    .line 60
    iput v2, p0, Lcom/duokan/TimedText;->mBackgroundColorRGBA:I

    .line 61
    iput v2, p0, Lcom/duokan/TimedText;->mHighlightColorRGBA:I

    .line 62
    iput v2, p0, Lcom/duokan/TimedText;->mScrollDelay:I

    .line 63
    iput v2, p0, Lcom/duokan/TimedText;->mWrapText:I

    .line 65
    iput-object v1, p0, Lcom/duokan/TimedText;->mBlinkingPosList:Ljava/util/List;

    .line 66
    iput-object v1, p0, Lcom/duokan/TimedText;->mHighlightPosList:Ljava/util/List;

    .line 67
    iput-object v1, p0, Lcom/duokan/TimedText;->mKaraokeList:Ljava/util/List;

    .line 68
    iput-object v1, p0, Lcom/duokan/TimedText;->mFontList:Ljava/util/List;

    .line 69
    iput-object v1, p0, Lcom/duokan/TimedText;->mStyleList:Ljava/util/List;

    .line 70
    iput-object v1, p0, Lcom/duokan/TimedText;->mHyperTextList:Ljava/util/List;

    .line 293
    iget-object v0, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 295
    invoke-direct {p0}, Lcom/duokan/TimedText;->parseParcel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/duokan/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 297
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parseParcel() fails"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_0
    return-void
.end method

.method private parseParcel()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 307
    iget-object v5, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 308
    iget-object v5, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->dataAvail()I

    move-result v5

    if-nez v5, :cond_1

    .line 438
    :cond_0
    :goto_0
    return v4

    .line 312
    :cond_1
    iget-object v5, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 313
    .local v3, type:I
    const/16 v5, 0x66

    if-ne v3, v5, :cond_3

    .line 314
    iget-object v5, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 315
    const/4 v5, 0x7

    if-ne v3, v5, :cond_0

    .line 318
    iget-object v5, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 319
    .local v1, mStartTimeMs:I
    iget-object v5, p0, Lcom/duokan/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v5, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 322
    const/16 v5, 0x10

    if-ne v3, v5, :cond_0

    .line 326
    new-instance v5, Lcom/duokan/TimedText$Text;

    invoke-direct {v5, p0}, Lcom/duokan/TimedText$Text;-><init>(Lcom/duokan/TimedText;)V

    iput-object v5, p0, Lcom/duokan/TimedText;->mTextStruct:Lcom/duokan/TimedText$Text;

    .line 327
    iget-object v5, p0, Lcom/duokan/TimedText;->mTextStruct:Lcom/duokan/TimedText$Text;

    iget-object v6, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Lcom/duokan/TimedText$Text;->textLen:I

    .line 329
    iget-object v5, p0, Lcom/duokan/TimedText;->mTextStruct:Lcom/duokan/TimedText$Text;

    iget-object v6, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    iput-object v6, v5, Lcom/duokan/TimedText$Text;->text:[B

    .line 330
    iget-object v5, p0, Lcom/duokan/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/duokan/TimedText;->mTextStruct:Lcom/duokan/TimedText$Text;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .end local v1           #mStartTimeMs:I
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->dataAvail()I

    move-result v5

    if-lez v5, :cond_6

    .line 338
    iget-object v5, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 339
    .local v0, key:I
    invoke-virtual {p0, v0}, Lcom/duokan/TimedText;->isValidKey(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 340
    const-string v5, "TimedText"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid timed text key found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 332
    .end local v0           #key:I
    :cond_3
    const/16 v5, 0x65

    if-eq v3, v5, :cond_2

    .line 333
    const-string v5, "TimedText"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid timed text key found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 344
    .restart local v0       #key:I
    :cond_4
    const/4 v2, 0x0

    .line 346
    .local v2, object:Ljava/lang/Object;
    packed-switch v0, :pswitch_data_0

    .line 429
    .end local v2           #object:Ljava/lang/Object;
    :goto_2
    :pswitch_0
    if-eqz v2, :cond_2

    .line 430
    iget-object v5, p0, Lcom/duokan/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 431
    iget-object v5, p0, Lcom/duokan/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    :cond_5
    iget-object v5, p0, Lcom/duokan/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 348
    .restart local v2       #object:Ljava/lang/Object;
    :pswitch_1
    invoke-direct {p0}, Lcom/duokan/TimedText;->readStyle()V

    .line 349
    iget-object v2, p0, Lcom/duokan/TimedText;->mStyleList:Ljava/util/List;

    .line 350
    .local v2, object:Ljava/util/List;
    goto :goto_2

    .line 353
    .local v2, object:Ljava/lang/Object;
    :pswitch_2
    invoke-direct {p0}, Lcom/duokan/TimedText;->readFont()V

    .line 354
    iget-object v2, p0, Lcom/duokan/TimedText;->mFontList:Ljava/util/List;

    .line 355
    .local v2, object:Ljava/util/List;
    goto :goto_2

    .line 358
    .local v2, object:Ljava/lang/Object;
    :pswitch_3
    invoke-direct {p0}, Lcom/duokan/TimedText;->readHighlight()V

    .line 359
    iget-object v2, p0, Lcom/duokan/TimedText;->mHighlightPosList:Ljava/util/List;

    .line 360
    .local v2, object:Ljava/util/List;
    goto :goto_2

    .line 363
    .local v2, object:Ljava/lang/Object;
    :pswitch_4
    invoke-direct {p0}, Lcom/duokan/TimedText;->readKaraoke()V

    .line 364
    iget-object v2, p0, Lcom/duokan/TimedText;->mKaraokeList:Ljava/util/List;

    .line 365
    .local v2, object:Ljava/util/List;
    goto :goto_2

    .line 368
    .local v2, object:Ljava/lang/Object;
    :pswitch_5
    invoke-direct {p0}, Lcom/duokan/TimedText;->readHyperText()V

    .line 369
    iget-object v2, p0, Lcom/duokan/TimedText;->mHyperTextList:Ljava/util/List;

    .line 371
    .local v2, object:Ljava/util/List;
    goto :goto_2

    .line 374
    .local v2, object:Ljava/lang/Object;
    :pswitch_6
    invoke-direct {p0}, Lcom/duokan/TimedText;->readBlinkingText()V

    .line 375
    iget-object v2, p0, Lcom/duokan/TimedText;->mBlinkingPosList:Ljava/util/List;

    .line 377
    .local v2, object:Ljava/util/List;
    goto :goto_2

    .line 380
    .local v2, object:Ljava/lang/Object;
    :pswitch_7
    iget-object v5, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/duokan/TimedText;->mWrapText:I

    .line 381
    iget v5, p0, Lcom/duokan/TimedText;->mWrapText:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 382
    .local v2, object:Ljava/lang/Integer;
    goto :goto_2

    .line 385
    .local v2, object:Ljava/lang/Object;
    :pswitch_8
    iget-object v5, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/duokan/TimedText;->mHighlightColorRGBA:I

    .line 386
    iget v5, p0, Lcom/duokan/TimedText;->mHighlightColorRGBA:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 387
    .local v2, object:Ljava/lang/Integer;
    goto :goto_2

    .line 390
    .local v2, object:Ljava/lang/Object;
    :pswitch_9
    iget-object v5, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/duokan/TimedText;->mDisplayFlags:I

    .line 391
    iget v5, p0, Lcom/duokan/TimedText;->mDisplayFlags:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 392
    .local v2, object:Ljava/lang/Integer;
    goto :goto_2

    .line 395
    .local v2, object:Ljava/lang/Object;
    :pswitch_a
    new-instance v5, Lcom/duokan/TimedText$Justification;

    invoke-direct {v5, p0}, Lcom/duokan/TimedText$Justification;-><init>(Lcom/duokan/TimedText;)V

    iput-object v5, p0, Lcom/duokan/TimedText;->mJustification:Lcom/duokan/TimedText$Justification;

    .line 397
    iget-object v5, p0, Lcom/duokan/TimedText;->mJustification:Lcom/duokan/TimedText$Justification;

    iget-object v6, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Lcom/duokan/TimedText$Justification;->horizontalJustification:I

    .line 398
    iget-object v5, p0, Lcom/duokan/TimedText;->mJustification:Lcom/duokan/TimedText$Justification;

    iget-object v6, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Lcom/duokan/TimedText$Justification;->verticalJustification:I

    .line 400
    iget-object v2, p0, Lcom/duokan/TimedText;->mJustification:Lcom/duokan/TimedText$Justification;

    .line 401
    .local v2, object:Lcom/duokan/TimedText$Justification;
    goto/16 :goto_2

    .line 404
    .local v2, object:Ljava/lang/Object;
    :pswitch_b
    iget-object v5, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/duokan/TimedText;->mBackgroundColorRGBA:I

    .line 405
    iget v5, p0, Lcom/duokan/TimedText;->mBackgroundColorRGBA:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 406
    .local v2, object:Ljava/lang/Integer;
    goto/16 :goto_2

    .line 409
    .local v2, object:Ljava/lang/Object;
    :pswitch_c
    new-instance v5, Lcom/duokan/TimedText$TextPos;

    invoke-direct {v5, p0}, Lcom/duokan/TimedText$TextPos;-><init>(Lcom/duokan/TimedText;)V

    iput-object v5, p0, Lcom/duokan/TimedText;->mTextPos:Lcom/duokan/TimedText$TextPos;

    .line 411
    iget-object v5, p0, Lcom/duokan/TimedText;->mTextPos:Lcom/duokan/TimedText$TextPos;

    iget-object v6, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Lcom/duokan/TimedText$TextPos;->top:I

    .line 412
    iget-object v5, p0, Lcom/duokan/TimedText;->mTextPos:Lcom/duokan/TimedText$TextPos;

    iget-object v6, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Lcom/duokan/TimedText$TextPos;->left:I

    .line 413
    iget-object v5, p0, Lcom/duokan/TimedText;->mTextPos:Lcom/duokan/TimedText$TextPos;

    iget-object v6, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Lcom/duokan/TimedText$TextPos;->bottom:I

    .line 414
    iget-object v5, p0, Lcom/duokan/TimedText;->mTextPos:Lcom/duokan/TimedText$TextPos;

    iget-object v6, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Lcom/duokan/TimedText$TextPos;->right:I

    .line 416
    iget-object v2, p0, Lcom/duokan/TimedText;->mTextPos:Lcom/duokan/TimedText$TextPos;

    .line 417
    .local v2, object:Lcom/duokan/TimedText$TextPos;
    goto/16 :goto_2

    .line 420
    .local v2, object:Ljava/lang/Object;
    :pswitch_d
    iget-object v5, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/duokan/TimedText;->mScrollDelay:I

    .line 421
    iget v5, p0, Lcom/duokan/TimedText;->mScrollDelay:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 422
    .local v2, object:Ljava/lang/Integer;
    goto/16 :goto_2

    .line 437
    .end local v0           #key:I
    .end local v2           #object:Ljava/lang/Integer;
    :cond_6
    iget-object v4, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 438
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 346
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_b
        :pswitch_8
        :pswitch_d
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_c
        :pswitch_a
    .end packed-switch
.end method

.method private readBlinkingText()V
    .locals 2

    .prologue
    .line 581
    new-instance v0, Lcom/duokan/TimedText$CharPos;

    invoke-direct {v0, p0}, Lcom/duokan/TimedText$CharPos;-><init>(Lcom/duokan/TimedText;)V

    .line 583
    .local v0, blinkingPos:Lcom/duokan/TimedText$CharPos;
    iget-object v1, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/duokan/TimedText$CharPos;->startChar:I

    .line 584
    iget-object v1, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/duokan/TimedText$CharPos;->endChar:I

    .line 586
    iget-object v1, p0, Lcom/duokan/TimedText;->mBlinkingPosList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 587
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/duokan/TimedText;->mBlinkingPosList:Ljava/util/List;

    .line 589
    :cond_0
    iget-object v1, p0, Lcom/duokan/TimedText;->mBlinkingPosList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    return-void
.end method

.method private readFont()V
    .locals 7

    .prologue
    .line 500
    iget-object v5, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 502
    .local v0, entryCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 503
    new-instance v1, Lcom/duokan/TimedText$Font;

    invoke-direct {v1, p0}, Lcom/duokan/TimedText$Font;-><init>(Lcom/duokan/TimedText;)V

    .line 505
    .local v1, font:Lcom/duokan/TimedText$Font;
    iget-object v5, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Lcom/duokan/TimedText$Font;->ID:I

    .line 506
    iget-object v5, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 508
    .local v3, nameLen:I
    iget-object v5, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 509
    .local v4, text:[B
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6, v3}, Ljava/lang/String;-><init>([BII)V

    iput-object v5, v1, Lcom/duokan/TimedText$Font;->name:Ljava/lang/String;

    .line 511
    iget-object v5, p0, Lcom/duokan/TimedText;->mFontList:Ljava/util/List;

    if-nez v5, :cond_0

    .line 512
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/duokan/TimedText;->mFontList:Ljava/util/List;

    .line 514
    :cond_0
    iget-object v5, p0, Lcom/duokan/TimedText;->mFontList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 516
    .end local v1           #font:Lcom/duokan/TimedText$Font;
    .end local v3           #nameLen:I
    .end local v4           #text:[B
    :cond_1
    return-void
.end method

.method private readHighlight()V
    .locals 2

    .prologue
    .line 522
    new-instance v0, Lcom/duokan/TimedText$CharPos;

    invoke-direct {v0, p0}, Lcom/duokan/TimedText$CharPos;-><init>(Lcom/duokan/TimedText;)V

    .line 524
    .local v0, pos:Lcom/duokan/TimedText$CharPos;
    iget-object v1, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/duokan/TimedText$CharPos;->startChar:I

    .line 525
    iget-object v1, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/duokan/TimedText$CharPos;->endChar:I

    .line 527
    iget-object v1, p0, Lcom/duokan/TimedText;->mHighlightPosList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 528
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/duokan/TimedText;->mHighlightPosList:Ljava/util/List;

    .line 530
    :cond_0
    iget-object v1, p0, Lcom/duokan/TimedText;->mHighlightPosList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    return-void
.end method

.method private readHyperText()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 558
    new-instance v1, Lcom/duokan/TimedText$HyperText;

    invoke-direct {v1, p0}, Lcom/duokan/TimedText$HyperText;-><init>(Lcom/duokan/TimedText;)V

    .line 560
    .local v1, hyperText:Lcom/duokan/TimedText$HyperText;
    iget-object v4, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/duokan/TimedText$HyperText;->startChar:I

    .line 561
    iget-object v4, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/duokan/TimedText$HyperText;->endChar:I

    .line 563
    iget-object v4, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 564
    .local v2, len:I
    iget-object v4, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 565
    .local v3, url:[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3, v5, v2}, Ljava/lang/String;-><init>([BII)V

    iput-object v4, v1, Lcom/duokan/TimedText$HyperText;->URL:Ljava/lang/String;

    .line 567
    iget-object v4, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 568
    iget-object v4, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 569
    .local v0, alt:[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0, v5, v2}, Ljava/lang/String;-><init>([BII)V

    iput-object v4, v1, Lcom/duokan/TimedText$HyperText;->altString:Ljava/lang/String;

    .line 571
    iget-object v4, p0, Lcom/duokan/TimedText;->mHyperTextList:Ljava/util/List;

    if-nez v4, :cond_0

    .line 572
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/duokan/TimedText;->mHyperTextList:Ljava/util/List;

    .line 574
    :cond_0
    iget-object v4, p0, Lcom/duokan/TimedText;->mHyperTextList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    return-void
.end method

.method private readKaraoke()V
    .locals 4

    .prologue
    .line 537
    iget-object v3, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 539
    .local v0, entryCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 540
    new-instance v2, Lcom/duokan/TimedText$Karaoke;

    invoke-direct {v2, p0}, Lcom/duokan/TimedText$Karaoke;-><init>(Lcom/duokan/TimedText;)V

    .line 542
    .local v2, kara:Lcom/duokan/TimedText$Karaoke;
    iget-object v3, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/duokan/TimedText$Karaoke;->startTimeMs:I

    .line 543
    iget-object v3, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/duokan/TimedText$Karaoke;->endTimeMs:I

    .line 544
    iget-object v3, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/duokan/TimedText$Karaoke;->startChar:I

    .line 545
    iget-object v3, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/duokan/TimedText$Karaoke;->endChar:I

    .line 547
    iget-object v3, p0, Lcom/duokan/TimedText;->mKaraokeList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 548
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/duokan/TimedText;->mKaraokeList:Ljava/util/List;

    .line 550
    :cond_0
    iget-object v3, p0, Lcom/duokan/TimedText;->mKaraokeList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 552
    .end local v2           #kara:Lcom/duokan/TimedText$Karaoke;
    :cond_1
    return-void
.end method

.method private readStyle()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 445
    new-instance v3, Lcom/duokan/TimedText$Style;

    invoke-direct {v3, p0}, Lcom/duokan/TimedText$Style;-><init>(Lcom/duokan/TimedText;)V

    .line 446
    .local v3, style:Lcom/duokan/TimedText$Style;
    const/4 v0, 0x0

    .line 448
    .local v0, endOfStyle:Z
    :goto_0
    if-nez v0, :cond_3

    iget-object v4, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->dataAvail()I

    move-result v4

    if-lez v4, :cond_3

    .line 449
    iget-object v4, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 450
    .local v2, key:I
    sparse-switch v2, :sswitch_data_0

    .line 483
    iget-object v4, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    iget-object v7, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v7}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 484
    const/4 v0, 0x1

    goto :goto_0

    .line 452
    :sswitch_0
    iget-object v4, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/duokan/TimedText$Style;->startChar:I

    goto :goto_0

    .line 456
    :sswitch_1
    iget-object v4, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/duokan/TimedText$Style;->endChar:I

    goto :goto_0

    .line 460
    :sswitch_2
    iget-object v4, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/duokan/TimedText$Style;->fontID:I

    goto :goto_0

    .line 464
    :sswitch_3
    iget-object v4, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 467
    .local v1, flags:I
    rem-int/lit8 v4, v1, 0x2

    if-ne v4, v5, :cond_0

    move v4, v5

    :goto_1
    iput-boolean v4, v3, Lcom/duokan/TimedText$Style;->isBold:Z

    .line 468
    rem-int/lit8 v4, v1, 0x4

    const/4 v7, 0x2

    if-lt v4, v7, :cond_1

    move v4, v5

    :goto_2
    iput-boolean v4, v3, Lcom/duokan/TimedText$Style;->isItalic:Z

    .line 469
    div-int/lit8 v4, v1, 0x4

    if-ne v4, v5, :cond_2

    move v4, v5

    :goto_3
    iput-boolean v4, v3, Lcom/duokan/TimedText$Style;->isUnderlined:Z

    goto :goto_0

    :cond_0
    move v4, v6

    .line 467
    goto :goto_1

    :cond_1
    move v4, v6

    .line 468
    goto :goto_2

    :cond_2
    move v4, v6

    .line 469
    goto :goto_3

    .line 473
    .end local v1           #flags:I
    :sswitch_4
    iget-object v4, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/duokan/TimedText$Style;->fontSize:I

    goto :goto_0

    .line 477
    :sswitch_5
    iget-object v4, p0, Lcom/duokan/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/duokan/TimedText$Style;->colorRGBA:I

    goto :goto_0

    .line 490
    .end local v2           #key:I
    :cond_3
    iget-object v4, p0, Lcom/duokan/TimedText;->mStyleList:Ljava/util/List;

    if-nez v4, :cond_4

    .line 491
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/duokan/TimedText;->mStyleList:Ljava/util/List;

    .line 493
    :cond_4
    iget-object v4, p0, Lcom/duokan/TimedText;->mStyleList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    return-void

    .line 450
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x67 -> :sswitch_0
        0x68 -> :sswitch_1
        0x69 -> :sswitch_2
        0x6a -> :sswitch_4
        0x6b -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public containsKey(I)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 612
    invoke-virtual {p0, p1}, Lcom/duokan/TimedText;->isValidKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duokan/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    const/4 v0, 0x1

    .line 615
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 3
    .parameter "key"

    .prologue
    .line 633
    invoke-virtual {p0, p1}, Lcom/duokan/TimedText;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/duokan/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 636
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isValidKey(I)Z
    .locals 2
    .parameter "key"

    .prologue
    const/4 v0, 0x1

    .line 598
    if-lt p1, v0, :cond_0

    const/16 v1, 0x10

    if-le p1, v1, :cond_2

    :cond_0
    const/16 v1, 0x65

    if-lt p1, v1, :cond_1

    const/16 v1, 0x6b

    if-le p1, v1, :cond_2

    .line 600
    :cond_1
    const/4 v0, 0x0

    .line 602
    :cond_2
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/duokan/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
