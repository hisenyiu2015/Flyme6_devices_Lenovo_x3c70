.class final enum Lcom/android/server/notification/NotificationManagerService$NotificationPriority;
.super Ljava/lang/Enum;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NotificationPriority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/notification/NotificationManagerService$NotificationPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/notification/NotificationManagerService$NotificationPriority;

.field public static final enum LIGHT_DEFAULT:Lcom/android/server/notification/NotificationManagerService$NotificationPriority;

.field public static final enum LIGHT_MISSEDCALL:Lcom/android/server/notification/NotificationManagerService$NotificationPriority;

.field public static final enum LIGHT_OTHER:Lcom/android/server/notification/NotificationManagerService$NotificationPriority;

.field public static final enum LIGHT_UNREADEMAIL:Lcom/android/server/notification/NotificationManagerService$NotificationPriority;

.field public static final enum LIGHT_UNREADQQ:Lcom/android/server/notification/NotificationManagerService$NotificationPriority;

.field public static final enum LIGHT_UNREADSMS:Lcom/android/server/notification/NotificationManagerService$NotificationPriority;

.field public static final enum LIGHT_UNREADWEIBO:Lcom/android/server/notification/NotificationManagerService$NotificationPriority;

.field public static final enum LIGHT_UNREADWEIXIN:Lcom/android/server/notification/NotificationManagerService$NotificationPriority;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 259
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$NotificationPriority;

    const-string v1, "LIGHT_MISSEDCALL"

    invoke-direct {v0, v1, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/notification/NotificationManagerService$NotificationPriority;->LIGHT_MISSEDCALL:Lcom/android/server/notification/NotificationManagerService$NotificationPriority;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$NotificationPriority;

    const-string v1, "LIGHT_UNREADSMS"

    invoke-direct {v0, v1, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/notification/NotificationManagerService$NotificationPriority;->LIGHT_UNREADSMS:Lcom/android/server/notification/NotificationManagerService$NotificationPriority;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$NotificationPriority;

    const-string v1, "LIGHT_UNREADWEIXIN"

    invoke-direct {v0, v1, v5}, Lcom/android/server/notification/NotificationManagerService$NotificationPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/notification/NotificationManagerService$NotificationPriority;->LIGHT_UNREADWEIXIN:Lcom/android/server/notification/NotificationManagerService$NotificationPriority;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$NotificationPriority;

    const-string v1, "LIGHT_UNREADQQ"

    invoke-direct {v0, v1, v6}, Lcom/android/server/notification/NotificationManagerService$NotificationPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/notification/NotificationManagerService$NotificationPriority;->LIGHT_UNREADQQ:Lcom/android/server/notification/NotificationManagerService$NotificationPriority;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$NotificationPriority;

    const-string v1, "LIGHT_UNREADWEIBO"

    invoke-direct {v0, v1, v7}, Lcom/android/server/notification/NotificationManagerService$NotificationPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/notification/NotificationManagerService$NotificationPriority;->LIGHT_UNREADWEIBO:Lcom/android/server/notification/NotificationManagerService$NotificationPriority;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$NotificationPriority;

    const-string v1, "LIGHT_UNREADEMAIL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/notification/NotificationManagerService$NotificationPriority;->LIGHT_UNREADEMAIL:Lcom/android/server/notification/NotificationManagerService$NotificationPriority;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$NotificationPriority;

    const-string v1, "LIGHT_OTHER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/notification/NotificationManagerService$NotificationPriority;->LIGHT_OTHER:Lcom/android/server/notification/NotificationManagerService$NotificationPriority;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$NotificationPriority;

    const-string v1, "LIGHT_DEFAULT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/notification/NotificationManagerService$NotificationPriority;->LIGHT_DEFAULT:Lcom/android/server/notification/NotificationManagerService$NotificationPriority;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/server/notification/NotificationManagerService$NotificationPriority;

    sget-object v1, Lcom/android/server/notification/NotificationManagerService$NotificationPriority;->LIGHT_MISSEDCALL:Lcom/android/server/notification/NotificationManagerService$NotificationPriority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/notification/NotificationManagerService$NotificationPriority;->LIGHT_UNREADSMS:Lcom/android/server/notification/NotificationManagerService$NotificationPriority;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/notification/NotificationManagerService$NotificationPriority;->LIGHT_UNREADWEIXIN:Lcom/android/server/notification/NotificationManagerService$NotificationPriority;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/notification/NotificationManagerService$NotificationPriority;->LIGHT_UNREADQQ:Lcom/android/server/notification/NotificationManagerService$NotificationPriority;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/notification/NotificationManagerService$NotificationPriority;->LIGHT_UNREADWEIBO:Lcom/android/server/notification/NotificationManagerService$NotificationPriority;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/server/notification/NotificationManagerService$NotificationPriority;->LIGHT_UNREADEMAIL:Lcom/android/server/notification/NotificationManagerService$NotificationPriority;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/server/notification/NotificationManagerService$NotificationPriority;->LIGHT_OTHER:Lcom/android/server/notification/NotificationManagerService$NotificationPriority;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/server/notification/NotificationManagerService$NotificationPriority;->LIGHT_DEFAULT:Lcom/android/server/notification/NotificationManagerService$NotificationPriority;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/notification/NotificationManagerService$NotificationPriority;->$VALUES:[Lcom/android/server/notification/NotificationManagerService$NotificationPriority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 259
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/notification/NotificationManagerService$NotificationPriority;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 259
    const-class v0, Lcom/android/server/notification/NotificationManagerService$NotificationPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationManagerService$NotificationPriority;

    return-object v0
.end method

.method public static values()[Lcom/android/server/notification/NotificationManagerService$NotificationPriority;
    .locals 1

    .prologue
    .line 259
    sget-object v0, Lcom/android/server/notification/NotificationManagerService$NotificationPriority;->$VALUES:[Lcom/android/server/notification/NotificationManagerService$NotificationPriority;

    invoke-virtual {v0}, [Lcom/android/server/notification/NotificationManagerService$NotificationPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/notification/NotificationManagerService$NotificationPriority;

    return-object v0
.end method
