.class public Lcom/miui/videoplayer/framework/views/LevelNinePathDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LevelNinePathDrawable.java"


# static fields
.field private static final MAX_LEVEL:I = 0x2710

.field private static final MIN_WIDTH:I = 0xa


# instance fields
.field private mDrawable:Landroid/graphics/drawable/NinePatchDrawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/NinePatchDrawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 16
    if-nez p1, :cond_0

    .line 17
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19
    :cond_0
    iput-object p1, p0, Lcom/miui/videoplayer/framework/views/LevelNinePathDrawable;->mDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 20
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/views/LevelNinePathDrawable;->getLevel()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x461c4000

    div-float v1, v3, v4

    .line 25
    .local v1, scaleX:F
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/views/LevelNinePathDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 26
    .local v0, bounds:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v3, v1

    .line 27
    .local v2, width:F
    const/high16 v3, 0x4120

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 28
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/LevelNinePathDrawable;->mDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    add-float/2addr v6, v2

    float-to-int v6, v6

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 29
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/LevelNinePathDrawable;->mDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 37
    :goto_0
    return-void

    .line 31
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 32
    const/high16 v3, 0x3f80

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 33
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/LevelNinePathDrawable;->mDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/views/LevelNinePathDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 34
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/LevelNinePathDrawable;->mDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 46
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 50
    return-void
.end method
