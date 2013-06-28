.class Lcom/duokan/MediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duokan/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mMediaPlayer:Lcom/duokan/MediaPlayer;

.field final synthetic this$0:Lcom/duokan/MediaPlayer;


# direct methods
.method public constructor <init>(Lcom/duokan/MediaPlayer;Lcom/duokan/MediaPlayer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "mp"
    .parameter "looper"

    .prologue
    .line 1181
    iput-object p1, p0, Lcom/duokan/MediaPlayer$EventHandler;->this$0:Lcom/duokan/MediaPlayer;

    .line 1182
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1183
    iput-object p2, p0, Lcom/duokan/MediaPlayer$EventHandler;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    .line 1184
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 1188
    iget-object v2, p0, Lcom/duokan/MediaPlayer$EventHandler;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    #getter for: Lcom/duokan/MediaPlayer;->mNativeContext:I
    invoke-static {v2}, Lcom/duokan/MediaPlayer;->access$000(Lcom/duokan/MediaPlayer;)I

    move-result v2

    if-nez v2, :cond_1

    .line 1189
    const-string v2, "XiaomiPlayer"

    const-string v3, "mediaplayer went away with unhandled events"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 1192
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1259
    const-string v2, "XiaomiPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown message type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1194
    :sswitch_1
    iget-object v2, p0, Lcom/duokan/MediaPlayer$EventHandler;->this$0:Lcom/duokan/MediaPlayer;

    #getter for: Lcom/duokan/MediaPlayer;->mOnPreparedListener:Lcom/duokan/MediaPlayer$OnPreparedListener;
    invoke-static {v2}, Lcom/duokan/MediaPlayer;->access$100(Lcom/duokan/MediaPlayer;)Lcom/duokan/MediaPlayer$OnPreparedListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1195
    iget-object v2, p0, Lcom/duokan/MediaPlayer$EventHandler;->this$0:Lcom/duokan/MediaPlayer;

    #getter for: Lcom/duokan/MediaPlayer;->mOnPreparedListener:Lcom/duokan/MediaPlayer$OnPreparedListener;
    invoke-static {v2}, Lcom/duokan/MediaPlayer;->access$100(Lcom/duokan/MediaPlayer;)Lcom/duokan/MediaPlayer$OnPreparedListener;

    move-result-object v2

    iget-object v3, p0, Lcom/duokan/MediaPlayer$EventHandler;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    invoke-interface {v2, v3}, Lcom/duokan/MediaPlayer$OnPreparedListener;->onPrepared(Lcom/duokan/MediaPlayer;)V

    goto :goto_0

    .line 1199
    :sswitch_2
    iget-object v2, p0, Lcom/duokan/MediaPlayer$EventHandler;->this$0:Lcom/duokan/MediaPlayer;

    #getter for: Lcom/duokan/MediaPlayer;->mOnCompletionListener:Lcom/duokan/MediaPlayer$OnCompletionListener;
    invoke-static {v2}, Lcom/duokan/MediaPlayer;->access$200(Lcom/duokan/MediaPlayer;)Lcom/duokan/MediaPlayer$OnCompletionListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1200
    iget-object v2, p0, Lcom/duokan/MediaPlayer$EventHandler;->this$0:Lcom/duokan/MediaPlayer;

    #getter for: Lcom/duokan/MediaPlayer;->mOnCompletionListener:Lcom/duokan/MediaPlayer$OnCompletionListener;
    invoke-static {v2}, Lcom/duokan/MediaPlayer;->access$200(Lcom/duokan/MediaPlayer;)Lcom/duokan/MediaPlayer$OnCompletionListener;

    move-result-object v2

    iget-object v3, p0, Lcom/duokan/MediaPlayer$EventHandler;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    invoke-interface {v2, v3}, Lcom/duokan/MediaPlayer$OnCompletionListener;->onCompletion(Lcom/duokan/MediaPlayer;)V

    .line 1201
    :cond_2
    iget-object v2, p0, Lcom/duokan/MediaPlayer$EventHandler;->this$0:Lcom/duokan/MediaPlayer;

    #calls: Lcom/duokan/MediaPlayer;->stayAwake(Z)V
    invoke-static {v2, v6}, Lcom/duokan/MediaPlayer;->access$300(Lcom/duokan/MediaPlayer;Z)V

    goto :goto_0

    .line 1205
    :sswitch_3
    iget-object v2, p0, Lcom/duokan/MediaPlayer$EventHandler;->this$0:Lcom/duokan/MediaPlayer;

    #getter for: Lcom/duokan/MediaPlayer;->mOnBufferingUpdateListener:Lcom/duokan/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v2}, Lcom/duokan/MediaPlayer;->access$400(Lcom/duokan/MediaPlayer;)Lcom/duokan/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1206
    iget-object v2, p0, Lcom/duokan/MediaPlayer$EventHandler;->this$0:Lcom/duokan/MediaPlayer;

    #getter for: Lcom/duokan/MediaPlayer;->mOnBufferingUpdateListener:Lcom/duokan/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v2}, Lcom/duokan/MediaPlayer;->access$400(Lcom/duokan/MediaPlayer;)Lcom/duokan/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v2

    iget-object v3, p0, Lcom/duokan/MediaPlayer$EventHandler;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3, v4}, Lcom/duokan/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcom/duokan/MediaPlayer;I)V

    goto :goto_0

    .line 1210
    :sswitch_4
    iget-object v2, p0, Lcom/duokan/MediaPlayer$EventHandler;->this$0:Lcom/duokan/MediaPlayer;

    #getter for: Lcom/duokan/MediaPlayer;->mOnSeekCompleteListener:Lcom/duokan/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v2}, Lcom/duokan/MediaPlayer;->access$500(Lcom/duokan/MediaPlayer;)Lcom/duokan/MediaPlayer$OnSeekCompleteListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1211
    iget-object v2, p0, Lcom/duokan/MediaPlayer$EventHandler;->this$0:Lcom/duokan/MediaPlayer;

    #getter for: Lcom/duokan/MediaPlayer;->mOnSeekCompleteListener:Lcom/duokan/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v2}, Lcom/duokan/MediaPlayer;->access$500(Lcom/duokan/MediaPlayer;)Lcom/duokan/MediaPlayer$OnSeekCompleteListener;

    move-result-object v2

    iget-object v3, p0, Lcom/duokan/MediaPlayer$EventHandler;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    invoke-interface {v2, v3}, Lcom/duokan/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Lcom/duokan/MediaPlayer;)V

    goto :goto_0

    .line 1215
    :sswitch_5
    iget-object v2, p0, Lcom/duokan/MediaPlayer$EventHandler;->this$0:Lcom/duokan/MediaPlayer;

    #getter for: Lcom/duokan/MediaPlayer;->mOnVideoSizeChangedListener:Lcom/duokan/MediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v2}, Lcom/duokan/MediaPlayer;->access$600(Lcom/duokan/MediaPlayer;)Lcom/duokan/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1216
    iget-object v2, p0, Lcom/duokan/MediaPlayer$EventHandler;->this$0:Lcom/duokan/MediaPlayer;

    #getter for: Lcom/duokan/MediaPlayer;->mOnVideoSizeChangedListener:Lcom/duokan/MediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v2}, Lcom/duokan/MediaPlayer;->access$600(Lcom/duokan/MediaPlayer;)Lcom/duokan/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v2

    iget-object v3, p0, Lcom/duokan/MediaPlayer$EventHandler;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4, v5}, Lcom/duokan/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lcom/duokan/MediaPlayer;II)V

    goto/16 :goto_0

    .line 1222
    :sswitch_6
    const-string v2, "XiaomiPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    const/4 v0, 0x0

    .line 1224
    .local v0, error_was_handled:Z
    iget-object v2, p0, Lcom/duokan/MediaPlayer$EventHandler;->this$0:Lcom/duokan/MediaPlayer;

    #getter for: Lcom/duokan/MediaPlayer;->mOnErrorListener:Lcom/duokan/MediaPlayer$OnErrorListener;
    invoke-static {v2}, Lcom/duokan/MediaPlayer;->access$700(Lcom/duokan/MediaPlayer;)Lcom/duokan/MediaPlayer$OnErrorListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1225
    iget-object v2, p0, Lcom/duokan/MediaPlayer$EventHandler;->this$0:Lcom/duokan/MediaPlayer;

    #getter for: Lcom/duokan/MediaPlayer;->mOnErrorListener:Lcom/duokan/MediaPlayer$OnErrorListener;
    invoke-static {v2}, Lcom/duokan/MediaPlayer;->access$700(Lcom/duokan/MediaPlayer;)Lcom/duokan/MediaPlayer$OnErrorListener;

    move-result-object v2

    iget-object v3, p0, Lcom/duokan/MediaPlayer$EventHandler;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4, v5}, Lcom/duokan/MediaPlayer$OnErrorListener;->onError(Lcom/duokan/MediaPlayer;II)Z

    move-result v0

    .line 1227
    :cond_3
    iget-object v2, p0, Lcom/duokan/MediaPlayer$EventHandler;->this$0:Lcom/duokan/MediaPlayer;

    #getter for: Lcom/duokan/MediaPlayer;->mOnCompletionListener:Lcom/duokan/MediaPlayer$OnCompletionListener;
    invoke-static {v2}, Lcom/duokan/MediaPlayer;->access$200(Lcom/duokan/MediaPlayer;)Lcom/duokan/MediaPlayer$OnCompletionListener;

    move-result-object v2

    if-eqz v2, :cond_4

    if-nez v0, :cond_4

    .line 1228
    iget-object v2, p0, Lcom/duokan/MediaPlayer$EventHandler;->this$0:Lcom/duokan/MediaPlayer;

    #getter for: Lcom/duokan/MediaPlayer;->mOnCompletionListener:Lcom/duokan/MediaPlayer$OnCompletionListener;
    invoke-static {v2}, Lcom/duokan/MediaPlayer;->access$200(Lcom/duokan/MediaPlayer;)Lcom/duokan/MediaPlayer$OnCompletionListener;

    move-result-object v2

    iget-object v3, p0, Lcom/duokan/MediaPlayer$EventHandler;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    invoke-interface {v2, v3}, Lcom/duokan/MediaPlayer$OnCompletionListener;->onCompletion(Lcom/duokan/MediaPlayer;)V

    .line 1230
    :cond_4
    iget-object v2, p0, Lcom/duokan/MediaPlayer$EventHandler;->this$0:Lcom/duokan/MediaPlayer;

    #calls: Lcom/duokan/MediaPlayer;->stayAwake(Z)V
    invoke-static {v2, v6}, Lcom/duokan/MediaPlayer;->access$300(Lcom/duokan/MediaPlayer;Z)V

    goto/16 :goto_0

    .line 1234
    .end local v0           #error_was_handled:Z
    :sswitch_7
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x2bc

    if-eq v2, v3, :cond_5

    .line 1235
    const-string v2, "XiaomiPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Info ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    :cond_5
    iget-object v2, p0, Lcom/duokan/MediaPlayer$EventHandler;->this$0:Lcom/duokan/MediaPlayer;

    #getter for: Lcom/duokan/MediaPlayer;->mOnInfoListener:Lcom/duokan/MediaPlayer$OnInfoListener;
    invoke-static {v2}, Lcom/duokan/MediaPlayer;->access$800(Lcom/duokan/MediaPlayer;)Lcom/duokan/MediaPlayer$OnInfoListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1238
    iget-object v2, p0, Lcom/duokan/MediaPlayer$EventHandler;->this$0:Lcom/duokan/MediaPlayer;

    #getter for: Lcom/duokan/MediaPlayer;->mOnInfoListener:Lcom/duokan/MediaPlayer$OnInfoListener;
    invoke-static {v2}, Lcom/duokan/MediaPlayer;->access$800(Lcom/duokan/MediaPlayer;)Lcom/duokan/MediaPlayer$OnInfoListener;

    move-result-object v2

    iget-object v3, p0, Lcom/duokan/MediaPlayer$EventHandler;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4, v5}, Lcom/duokan/MediaPlayer$OnInfoListener;->onInfo(Lcom/duokan/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 1243
    :sswitch_8
    iget-object v2, p0, Lcom/duokan/MediaPlayer$EventHandler;->this$0:Lcom/duokan/MediaPlayer;

    #getter for: Lcom/duokan/MediaPlayer;->mOnTimedTextListener:Lcom/duokan/MediaPlayer$OnTimedTextListener;
    invoke-static {v2}, Lcom/duokan/MediaPlayer;->access$900(Lcom/duokan/MediaPlayer;)Lcom/duokan/MediaPlayer$OnTimedTextListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1244
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_6

    .line 1245
    iget-object v2, p0, Lcom/duokan/MediaPlayer$EventHandler;->this$0:Lcom/duokan/MediaPlayer;

    #getter for: Lcom/duokan/MediaPlayer;->mOnTimedTextListener:Lcom/duokan/MediaPlayer$OnTimedTextListener;
    invoke-static {v2}, Lcom/duokan/MediaPlayer;->access$900(Lcom/duokan/MediaPlayer;)Lcom/duokan/MediaPlayer$OnTimedTextListener;

    move-result-object v2

    iget-object v3, p0, Lcom/duokan/MediaPlayer$EventHandler;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/duokan/MediaPlayer$OnTimedTextListener;->onTimedText(Lcom/duokan/MediaPlayer;Lcom/duokan/TimedText;)V

    goto/16 :goto_0

    .line 1247
    :cond_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, [B

    if-eqz v2, :cond_0

    .line 1248
    new-instance v1, Lcom/duokan/TimedText;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-direct {v1, v2}, Lcom/duokan/TimedText;-><init>([B)V

    .line 1249
    .local v1, text:Lcom/duokan/TimedText;
    iget-object v2, p0, Lcom/duokan/MediaPlayer$EventHandler;->this$0:Lcom/duokan/MediaPlayer;

    #getter for: Lcom/duokan/MediaPlayer;->mOnTimedTextListener:Lcom/duokan/MediaPlayer$OnTimedTextListener;
    invoke-static {v2}, Lcom/duokan/MediaPlayer;->access$900(Lcom/duokan/MediaPlayer;)Lcom/duokan/MediaPlayer$OnTimedTextListener;

    move-result-object v2

    iget-object v3, p0, Lcom/duokan/MediaPlayer$EventHandler;->mMediaPlayer:Lcom/duokan/MediaPlayer;

    invoke-interface {v2, v3, v1}, Lcom/duokan/MediaPlayer$OnTimedTextListener;->onTimedText(Lcom/duokan/MediaPlayer;Lcom/duokan/TimedText;)V

    goto/16 :goto_0

    .line 1192
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x63 -> :sswitch_8
        0x64 -> :sswitch_6
        0xc8 -> :sswitch_7
    .end sparse-switch
.end method
