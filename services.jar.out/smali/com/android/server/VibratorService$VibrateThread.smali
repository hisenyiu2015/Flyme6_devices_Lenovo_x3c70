.class Lcom/android/server/VibratorService$VibrateThread;
.super Ljava/lang/Thread;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateThread"
.end annotation


# instance fields
.field mDone:Z

.field final mVibration:Lcom/android/server/VibratorService$Vibration;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .locals 2
    .param p2, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 692
    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 693
    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    .line 694
    # getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1300(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->access$1000(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->set(I)V

    .line 695
    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1400(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    # getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1300(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 696
    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1400(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 697
    return-void
.end method

.method private delay(J)V
    .locals 7
    .param p1, "duration"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 700
    cmp-long v2, p1, v4

    if-lez v2, :cond_1

    .line 701
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long v0, p1, v2

    .line 704
    .local v0, "bedtime":J
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-eqz v2, :cond_2

    .line 714
    .end local v0    # "bedtime":J
    :cond_1
    :goto_1
    return-void

    .line 711
    .restart local v0    # "bedtime":J
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long p1, v0, v2

    .line 712
    cmp-long v2, p1, v4

    if-gtz v2, :cond_0

    goto :goto_1

    .line 706
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 717
    const/4 v3, -0x8

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 718
    monitor-enter p0

    .line 719
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mPattern:[J
    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->access$700(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v12

    .line 720
    .local v12, "pattern":[J
    array-length v11, v12

    .line 721
    .local v11, "len":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mRepeat:I
    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->access$800(Lcom/android/server/VibratorService$Vibration;)I

    move-result v13

    .line 722
    .local v13, "repeat":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->access$1000(Lcom/android/server/VibratorService$Vibration;)I

    move-result v8

    .line 723
    .local v8, "uid":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUsageHint:I
    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->access$900(Lcom/android/server/VibratorService$Vibration;)I

    move-result v9

    .line 724
    .local v9, "usageHint":I
    const/4 v2, 0x0

    .line 725
    .local v2, "index":I
    const-wide/16 v6, 0x0

    .line 726
    .local v6, "duration":J
    const-wide/16 v4, -0x1

    .line 728
    .local v4, "intension":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mVibratorType:I
    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->access$1500(Lcom/android/server/VibratorService$Vibration;)I

    move-result v14

    .line 729
    .local v14, "vibratorType":I
    const-string v3, "VibratorService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "vibratorType :: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v3, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    if-nez v14, :cond_8

    :cond_0
    move v10, v2

    .line 732
    .end local v2    # "index":I
    .local v10, "index":I
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-nez v3, :cond_e

    .line 734
    if-ge v10, v11, :cond_1

    .line 735
    add-int/lit8 v2, v10, 0x1

    .end local v10    # "index":I
    .restart local v2    # "index":I
    aget-wide v16, v12, v10

    add-long v6, v6, v16

    move v10, v2

    .line 739
    .end local v2    # "index":I
    .restart local v10    # "index":I
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/server/VibratorService$VibrateThread;->delay(J)V

    .line 740
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-eqz v3, :cond_5

    move v2, v10

    .line 817
    .end local v10    # "index":I
    .restart local v2    # "index":I
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/server/VibratorService;->access$1400(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 818
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v15

    monitor-enter v15

    .line 820
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v3, v3, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    move-object/from16 v0, p0

    if-ne v3, v0, :cond_3

    .line 821
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v3, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 823
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-nez v3, :cond_4

    .line 826
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    # invokes: Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    invoke-static {v3, v0}, Lcom/android/server/VibratorService;->access$1800(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    .line 827
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->startNextVibrationLocked()V
    invoke-static {v3}, Lcom/android/server/VibratorService;->access$300(Lcom/android/server/VibratorService;)V

    .line 829
    :cond_4
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 830
    return-void

    .line 744
    .end local v2    # "index":I
    .restart local v10    # "index":I
    :cond_5
    if-ge v10, v11, :cond_6

    .line 747
    add-int/lit8 v2, v10, 0x1

    .end local v10    # "index":I
    .restart local v2    # "index":I
    :try_start_2
    aget-wide v6, v12, v10

    .line 748
    const-wide/16 v16, 0x0

    cmp-long v3, v6, v16

    if-lez v3, :cond_0

    .line 749
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->doVibratorOn(JII)V
    invoke-static {v3, v6, v7, v8, v9}, Lcom/android/server/VibratorService;->access$1600(Lcom/android/server/VibratorService;JII)V

    move v10, v2

    .end local v2    # "index":I
    .restart local v10    # "index":I
    goto :goto_0

    .line 752
    :cond_6
    if-gez v13, :cond_7

    move v2, v10

    .line 753
    .end local v10    # "index":I
    .restart local v2    # "index":I
    goto :goto_1

    .line 755
    .end local v2    # "index":I
    .restart local v10    # "index":I
    :cond_7
    move v2, v13

    .line 756
    .end local v10    # "index":I
    .restart local v2    # "index":I
    const-wide/16 v6, 0x0

    move v10, v2

    .end local v2    # "index":I
    .restart local v10    # "index":I
    goto :goto_0

    .line 760
    .end local v10    # "index":I
    .restart local v2    # "index":I
    :cond_8
    const/4 v3, 0x1

    if-ne v14, v3, :cond_2

    :cond_9
    move v10, v2

    .line 761
    .end local v2    # "index":I
    .restart local v10    # "index":I
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-nez v3, :cond_e

    .line 763
    if-ge v10, v11, :cond_a

    .line 766
    add-int/lit8 v2, v10, 0x1

    .end local v10    # "index":I
    .restart local v2    # "index":I
    aget-wide v6, v12, v10

    move v10, v2

    .line 776
    .end local v2    # "index":I
    .restart local v10    # "index":I
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-eqz v3, :cond_b

    move v2, v10

    .line 777
    .end local v10    # "index":I
    .restart local v2    # "index":I
    goto :goto_1

    .line 780
    .end local v2    # "index":I
    .restart local v10    # "index":I
    :cond_b
    if-ge v10, v11, :cond_c

    .line 793
    add-int/lit8 v2, v10, 0x1

    .end local v10    # "index":I
    .restart local v2    # "index":I
    aget-wide v4, v12, v10

    .line 799
    const-wide/16 v16, 0x0

    cmp-long v3, v6, v16

    if-lez v3, :cond_9

    const-wide/16 v16, -0x1

    cmp-long v3, v4, v16

    if-eqz v3, :cond_9

    .line 800
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->doLenovoVibrator(JJII)V
    invoke-static/range {v3 .. v9}, Lcom/android/server/VibratorService;->access$1700(Lcom/android/server/VibratorService;JJII)V

    move v10, v2

    .end local v2    # "index":I
    .restart local v10    # "index":I
    goto :goto_2

    .line 805
    :cond_c
    if-gez v13, :cond_d

    move v2, v10

    .line 809
    .end local v10    # "index":I
    .restart local v2    # "index":I
    goto/16 :goto_1

    .line 811
    .end local v2    # "index":I
    .restart local v10    # "index":I
    :cond_d
    move v2, v13

    .line 812
    .end local v10    # "index":I
    .restart local v2    # "index":I
    const-wide/16 v6, 0x0

    move v10, v2

    .end local v2    # "index":I
    .restart local v10    # "index":I
    goto :goto_2

    .line 818
    .end local v4    # "intension":J
    .end local v6    # "duration":J
    .end local v8    # "uid":I
    .end local v9    # "usageHint":I
    .end local v10    # "index":I
    .end local v11    # "len":I
    .end local v12    # "pattern":[J
    .end local v13    # "repeat":I
    .end local v14    # "vibratorType":I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 829
    .restart local v2    # "index":I
    .restart local v4    # "intension":J
    .restart local v6    # "duration":J
    .restart local v8    # "uid":I
    .restart local v9    # "usageHint":I
    .restart local v11    # "len":I
    .restart local v12    # "pattern":[J
    .restart local v13    # "repeat":I
    .restart local v14    # "vibratorType":I
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .end local v2    # "index":I
    .restart local v10    # "index":I
    :cond_e
    move v2, v10

    .end local v10    # "index":I
    .restart local v2    # "index":I
    goto/16 :goto_1
.end method
