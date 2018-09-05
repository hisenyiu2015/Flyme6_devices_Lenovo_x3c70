.class Landroid/media/KaraokeService$KaraokeHandler;
.super Landroid/os/Handler;
.source "KaraokeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/KaraokeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KaraokeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/KaraokeService;


# direct methods
.method private constructor <init>(Landroid/media/KaraokeService;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Landroid/media/KaraokeService$KaraokeHandler;->this$0:Landroid/media/KaraokeService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/KaraokeService;Landroid/media/KaraokeService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/KaraokeService;
    .param p2, "x1"    # Landroid/media/KaraokeService$1;

    .prologue
    .line 174
    invoke-direct {p0, p1}, Landroid/media/KaraokeService$KaraokeHandler;-><init>(Landroid/media/KaraokeService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 178
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 252
    :goto_0
    return-void

    .line 180
    :sswitch_0
    const-string v0, "KaraokeService"

    const-string/jumbo v1, "ready"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 184
    :sswitch_1
    const-string v0, "KaraokeService"

    const-string v1, "close kalaoke device message received: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Landroid/media/KaraokeService$KaraokeHandler;->this$0:Landroid/media/KaraokeService;

    # getter for: Landroid/media/KaraokeService;->mKaraokeAPI:Landroid/media/KaraokeService$KaraokeAPI;
    invoke-static {v0}, Landroid/media/KaraokeService;->access$200(Landroid/media/KaraokeService;)Landroid/media/KaraokeService$KaraokeAPI;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/KaraokeService$KaraokeAPI;->disableKaraoke()V

    .line 186
    iget-object v0, p0, Landroid/media/KaraokeService$KaraokeHandler;->this$0:Landroid/media/KaraokeService;

    const/4 v1, 0x0

    # setter for: Landroid/media/KaraokeService;->mKaraokeState:I
    invoke-static {v0, v1}, Landroid/media/KaraokeService;->access$302(Landroid/media/KaraokeService;I)I

    .line 187
    iget-object v0, p0, Landroid/media/KaraokeService$KaraokeHandler;->this$0:Landroid/media/KaraokeService;

    # getter for: Landroid/media/KaraokeService;->mOpenDeviceDeathHandlers:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/media/KaraokeService;->access$400(Landroid/media/KaraokeService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 188
    :try_start_0
    iget-object v0, p0, Landroid/media/KaraokeService$KaraokeHandler;->this$0:Landroid/media/KaraokeService;

    # getter for: Landroid/media/KaraokeService;->mOpenDeviceDeathHandlers:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/media/KaraokeService;->access$400(Landroid/media/KaraokeService;)Ljava/util/HashMap;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Landroid/media/KaraokeService$KaraokeHandler;->this$0:Landroid/media/KaraokeService;

    # getter for: Landroid/media/KaraokeService;->mOpenDeviceDeathHandlers:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/media/KaraokeService;->access$400(Landroid/media/KaraokeService;)Ljava/util/HashMap;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/KaraokeService$OpenDeviceDeathHandler;

    invoke-virtual {v0}, Landroid/media/KaraokeService$OpenDeviceDeathHandler;->release()V

    .line 190
    :cond_0
    iget-object v0, p0, Landroid/media/KaraokeService$KaraokeHandler;->this$0:Landroid/media/KaraokeService;

    # getter for: Landroid/media/KaraokeService;->mOpenDeviceDeathHandlers:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/media/KaraokeService;->access$400(Landroid/media/KaraokeService;)Ljava/util/HashMap;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 195
    :sswitch_2
    const-string v0, "KaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set karaoke mode message received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Landroid/media/KaraokeService$KaraokeHandler;->this$0:Landroid/media/KaraokeService;

    # getter for: Landroid/media/KaraokeService;->mKaraokeAPI:Landroid/media/KaraokeService$KaraokeAPI;
    invoke-static {v0}, Landroid/media/KaraokeService;->access$200(Landroid/media/KaraokeService;)Landroid/media/KaraokeService$KaraokeAPI;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/media/KaraokeService$KaraokeAPI;->setVocalDryWetMix(I)V

    .line 198
    iget-object v0, p0, Landroid/media/KaraokeService$KaraokeHandler;->this$0:Landroid/media/KaraokeService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # setter for: Landroid/media/KaraokeService;->mKaraokeMode:I
    invoke-static {v0, v1}, Landroid/media/KaraokeService;->access$502(Landroid/media/KaraokeService;I)I

    goto/16 :goto_0

    .line 202
    :sswitch_3
    const-string v0, "KaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set karaoke effect message received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Landroid/media/KaraokeService$KaraokeHandler;->this$0:Landroid/media/KaraokeService;

    # getter for: Landroid/media/KaraokeService;->mKaraokeAPI:Landroid/media/KaraokeService$KaraokeAPI;
    invoke-static {v0}, Landroid/media/KaraokeService;->access$200(Landroid/media/KaraokeService;)Landroid/media/KaraokeService$KaraokeAPI;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/media/KaraokeService$KaraokeAPI;->setVocalEchoReverbPreset(I)V

    .line 204
    iget-object v0, p0, Landroid/media/KaraokeService$KaraokeHandler;->this$0:Landroid/media/KaraokeService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # setter for: Landroid/media/KaraokeService;->mKaraokeEffect:I
    invoke-static {v0, v1}, Landroid/media/KaraokeService;->access$602(Landroid/media/KaraokeService;I)I

    goto/16 :goto_0

    .line 208
    :sswitch_4
    const-string v0, "KaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set ear feedback volume message received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Landroid/media/KaraokeService$KaraokeHandler;->this$0:Landroid/media/KaraokeService;

    # getter for: Landroid/media/KaraokeService;->mKaraokeAPI:Landroid/media/KaraokeService$KaraokeAPI;
    invoke-static {v0}, Landroid/media/KaraokeService;->access$200(Landroid/media/KaraokeService;)Landroid/media/KaraokeService$KaraokeAPI;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/media/KaraokeService$KaraokeAPI;->setFeedbackVol(I)V

    .line 210
    iget-object v0, p0, Landroid/media/KaraokeService$KaraokeHandler;->this$0:Landroid/media/KaraokeService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # setter for: Landroid/media/KaraokeService;->mKaraokeEarVolume:I
    invoke-static {v0, v1}, Landroid/media/KaraokeService;->access$702(Landroid/media/KaraokeService;I)I

    goto/16 :goto_0

    .line 214
    :sswitch_5
    const-string v0, "KaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set user mode reverberation message received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Landroid/media/KaraokeService$KaraokeHandler;->this$0:Landroid/media/KaraokeService;

    # getter for: Landroid/media/KaraokeService;->mKaraokeAPI:Landroid/media/KaraokeService$KaraokeAPI;
    invoke-static {v0}, Landroid/media/KaraokeService;->access$200(Landroid/media/KaraokeService;)Landroid/media/KaraokeService$KaraokeAPI;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/media/KaraokeService$KaraokeAPI;->setUserModeReverb(I)V

    .line 216
    iget-object v0, p0, Landroid/media/KaraokeService$KaraokeHandler;->this$0:Landroid/media/KaraokeService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # setter for: Landroid/media/KaraokeService;->mKaraokeUserModeReverb:I
    invoke-static {v0, v1}, Landroid/media/KaraokeService;->access$802(Landroid/media/KaraokeService;I)I

    goto/16 :goto_0

    .line 220
    :sswitch_6
    const-string v0, "KaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set user mode echo dealy message received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Landroid/media/KaraokeService$KaraokeHandler;->this$0:Landroid/media/KaraokeService;

    # getter for: Landroid/media/KaraokeService;->mKaraokeAPI:Landroid/media/KaraokeService$KaraokeAPI;
    invoke-static {v0}, Landroid/media/KaraokeService;->access$200(Landroid/media/KaraokeService;)Landroid/media/KaraokeService$KaraokeAPI;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/media/KaraokeService$KaraokeAPI;->setUserModeEchoDelay(I)V

    .line 222
    iget-object v0, p0, Landroid/media/KaraokeService$KaraokeHandler;->this$0:Landroid/media/KaraokeService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # setter for: Landroid/media/KaraokeService;->mKaraokeUserModeEchoDelay:I
    invoke-static {v0, v1}, Landroid/media/KaraokeService;->access$902(Landroid/media/KaraokeService;I)I

    goto/16 :goto_0

    .line 226
    :sswitch_7
    const-string v0, "KaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set user mode echo feedback message received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Landroid/media/KaraokeService$KaraokeHandler;->this$0:Landroid/media/KaraokeService;

    # getter for: Landroid/media/KaraokeService;->mKaraokeAPI:Landroid/media/KaraokeService$KaraokeAPI;
    invoke-static {v0}, Landroid/media/KaraokeService;->access$200(Landroid/media/KaraokeService;)Landroid/media/KaraokeService$KaraokeAPI;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/media/KaraokeService$KaraokeAPI;->setUserModeEchoFeedback(I)V

    .line 228
    iget-object v0, p0, Landroid/media/KaraokeService$KaraokeHandler;->this$0:Landroid/media/KaraokeService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # setter for: Landroid/media/KaraokeService;->mKaraokeUserModeEchoFeedback:I
    invoke-static {v0, v1}, Landroid/media/KaraokeService;->access$1002(Landroid/media/KaraokeService;I)I

    goto/16 :goto_0

    .line 232
    :sswitch_8
    const-string v0, "KaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set user mode effect level message received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Landroid/media/KaraokeService$KaraokeHandler;->this$0:Landroid/media/KaraokeService;

    # getter for: Landroid/media/KaraokeService;->mKaraokeAPI:Landroid/media/KaraokeService$KaraokeAPI;
    invoke-static {v0}, Landroid/media/KaraokeService;->access$200(Landroid/media/KaraokeService;)Landroid/media/KaraokeService$KaraokeAPI;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/media/KaraokeService$KaraokeAPI;->setUserModeEffectLevel(I)V

    .line 234
    iget-object v0, p0, Landroid/media/KaraokeService$KaraokeHandler;->this$0:Landroid/media/KaraokeService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # setter for: Landroid/media/KaraokeService;->mKaraokeUserModeEffectLevel:I
    invoke-static {v0, v1}, Landroid/media/KaraokeService;->access$1102(Landroid/media/KaraokeService;I)I

    goto/16 :goto_0

    .line 238
    :sswitch_9
    const-string v0, "KaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set user mode equallizer level message received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Landroid/media/KaraokeService$KaraokeHandler;->this$0:Landroid/media/KaraokeService;

    # getter for: Landroid/media/KaraokeService;->mKaraokeAPI:Landroid/media/KaraokeService$KaraokeAPI;
    invoke-static {v0}, Landroid/media/KaraokeService;->access$200(Landroid/media/KaraokeService;)Landroid/media/KaraokeService$KaraokeAPI;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/media/KaraokeService$KaraokeAPI;->setUserModeEqualLevel(I)V

    .line 240
    iget-object v0, p0, Landroid/media/KaraokeService$KaraokeHandler;->this$0:Landroid/media/KaraokeService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # setter for: Landroid/media/KaraokeService;->mKaraokeUserModeEqualLevel:I
    invoke-static {v0, v1}, Landroid/media/KaraokeService;->access$1202(Landroid/media/KaraokeService;I)I

    goto/16 :goto_0

    .line 244
    :sswitch_a
    const-string v0, "KaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set music pitch level message received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Landroid/media/KaraokeService$KaraokeHandler;->this$0:Landroid/media/KaraokeService;

    # getter for: Landroid/media/KaraokeService;->mKaraokeAPI:Landroid/media/KaraokeService$KaraokeAPI;
    invoke-static {v0}, Landroid/media/KaraokeService;->access$200(Landroid/media/KaraokeService;)Landroid/media/KaraokeService$KaraokeAPI;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/media/KaraokeService$KaraokeAPI;->setMusicPitchLevel(I)V

    .line 246
    iget-object v0, p0, Landroid/media/KaraokeService$KaraokeHandler;->this$0:Landroid/media/KaraokeService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # setter for: Landroid/media/KaraokeService;->mKaraokeMusicPitchLevel:I
    invoke-static {v0, v1}, Landroid/media/KaraokeService;->access$1302(Landroid/media/KaraokeService;I)I

    goto/16 :goto_0

    .line 178
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0xc9 -> :sswitch_2
        0xca -> :sswitch_3
        0xcb -> :sswitch_4
        0xcd -> :sswitch_1
        0xce -> :sswitch_5
        0xcf -> :sswitch_6
        0xd0 -> :sswitch_7
        0xd1 -> :sswitch_8
        0xd2 -> :sswitch_9
        0xd3 -> :sswitch_a
    .end sparse-switch
.end method
