.class public Landroidx/core/app/NotificationCompat$Action;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$Action$SemanticAction;,
        Landroidx/core/app/NotificationCompat$Action$WearableExtender;,
        Landroidx/core/app/NotificationCompat$Action$Extender;,
        Landroidx/core/app/NotificationCompat$Action$Builder;
    }
.end annotation


# static fields
.field static final EXTRA_SEMANTIC_ACTION:Ljava/lang/String; = "android.support.action.semanticAction"

.field static final EXTRA_SHOWS_USER_INTERFACE:Ljava/lang/String; = "android.support.action.showsUserInterface"

.field public static final SEMANTIC_ACTION_ARCHIVE:I = 0x5

.field public static final SEMANTIC_ACTION_CALL:I = 0xa

.field public static final SEMANTIC_ACTION_DELETE:I = 0x4

.field public static final SEMANTIC_ACTION_MARK_AS_READ:I = 0x2

.field public static final SEMANTIC_ACTION_MARK_AS_UNREAD:I = 0x3

.field public static final SEMANTIC_ACTION_MUTE:I = 0x6

.field public static final SEMANTIC_ACTION_NONE:I = 0x0

.field public static final SEMANTIC_ACTION_REPLY:I = 0x1

.field public static final SEMANTIC_ACTION_THUMBS_DOWN:I = 0x9

.field public static final SEMANTIC_ACTION_THUMBS_UP:I = 0x8

.field public static final SEMANTIC_ACTION_UNMUTE:I = 0x7


# instance fields
.field public actionIntent:Landroid/app/PendingIntent;

.field public icon:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mAllowGeneratedReplies:Z

.field private mAuthenticationRequired:Z

.field private final mDataOnlyRemoteInputs:[Landroidx/core/app/RemoteInput;

.field final mExtras:Landroid/os/Bundle;

.field private mIcon:Landroidx/core/graphics/drawable/IconCompat;

.field private final mIsContextual:Z

.field private final mRemoteInputs:[Landroidx/core/app/RemoteInput;

.field private final mSemanticAction:I

.field mShowsUserInterface:Z

.field public title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .line 5693
    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    invoke-static {v0, v1, p1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, p2, p3}, Landroidx/core/app/NotificationCompat$Action;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 5694
    return-void
.end method

.method constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZZZ)V
    .locals 13
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "remoteInputs"    # [Landroidx/core/app/RemoteInput;
    .param p6, "dataOnlyRemoteInputs"    # [Landroidx/core/app/RemoteInput;
    .param p7, "allowGeneratedReplies"    # Z
    .param p8, "semanticAction"    # I
    .param p9, "showsUserInterface"    # Z
    .param p10, "isContextual"    # Z
    .param p11, "requireAuth"    # Z

    .line 5711
    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    invoke-static {v0, v1, p1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    :goto_0
    move-object v2, v0

    move-object v1, p0

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Landroidx/core/app/NotificationCompat$Action;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZZZ)V

    .line 5714
    return-void
.end method

.method public constructor <init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 12
    .param p1, "icon"    # Landroidx/core/graphics/drawable/IconCompat;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .line 5702
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "icon":Landroidx/core/graphics/drawable/IconCompat;
    .end local p2    # "title":Ljava/lang/CharSequence;
    .end local p3    # "intent":Landroid/app/PendingIntent;
    .local v1, "icon":Landroidx/core/graphics/drawable/IconCompat;
    .local v2, "title":Ljava/lang/CharSequence;
    .local v3, "intent":Landroid/app/PendingIntent;
    invoke-direct/range {v0 .. v11}, Landroidx/core/app/NotificationCompat$Action;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZZZ)V

    .line 5704
    return-void
.end method

.method constructor <init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZZZ)V
    .locals 2
    .param p1, "icon"    # Landroidx/core/graphics/drawable/IconCompat;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "remoteInputs"    # [Landroidx/core/app/RemoteInput;
    .param p6, "dataOnlyRemoteInputs"    # [Landroidx/core/app/RemoteInput;
    .param p7, "allowGeneratedReplies"    # Z
    .param p8, "semanticAction"    # I
    .param p9, "showsUserInterface"    # Z
    .param p10, "isContextual"    # Z
    .param p11, "requireAuth"    # Z

    .line 5722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5668
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$Action;->mShowsUserInterface:Z

    .line 5723
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Action;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 5724
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 5725
    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->getResId()I

    move-result v0

    iput v0, p0, Landroidx/core/app/NotificationCompat$Action;->icon:I

    .line 5727
    :cond_0
    invoke-static {p2}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    .line 5728
    iput-object p3, p0, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 5729
    if-eqz p4, :cond_1

    move-object v0, p4

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    .line 5730
    iput-object p5, p0, Landroidx/core/app/NotificationCompat$Action;->mRemoteInputs:[Landroidx/core/app/RemoteInput;

    .line 5731
    iput-object p6, p0, Landroidx/core/app/NotificationCompat$Action;->mDataOnlyRemoteInputs:[Landroidx/core/app/RemoteInput;

    .line 5732
    iput-boolean p7, p0, Landroidx/core/app/NotificationCompat$Action;->mAllowGeneratedReplies:Z

    .line 5733
    iput p8, p0, Landroidx/core/app/NotificationCompat$Action;->mSemanticAction:I

    .line 5734
    iput-boolean p9, p0, Landroidx/core/app/NotificationCompat$Action;->mShowsUserInterface:Z

    .line 5735
    iput-boolean p10, p0, Landroidx/core/app/NotificationCompat$Action;->mIsContextual:Z

    .line 5736
    iput-boolean p11, p0, Landroidx/core/app/NotificationCompat$Action;->mAuthenticationRequired:Z

    .line 5737
    return-void
.end method


# virtual methods
.method public getActionIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 5764
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getAllowGeneratedReplies()Z
    .locals 1

    .line 5779
    iget-boolean v0, p0, Landroidx/core/app/NotificationCompat$Action;->mAllowGeneratedReplies:Z

    return v0
.end method

.method public getDataOnlyRemoteInputs()[Landroidx/core/app/RemoteInput;
    .locals 1

    .line 5833
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Action;->mDataOnlyRemoteInputs:[Landroidx/core/app/RemoteInput;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 5771
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getIcon()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5745
    iget v0, p0, Landroidx/core/app/NotificationCompat$Action;->icon:I

    return v0
.end method

.method public getIconCompat()Landroidx/core/graphics/drawable/IconCompat;
    .locals 3

    .line 5753
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Action;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/core/app/NotificationCompat$Action;->icon:I

    if-eqz v0, :cond_0

    .line 5754
    const-string v0, ""

    iget v1, p0, Landroidx/core/app/NotificationCompat$Action;->icon:I

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Action;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 5756
    :cond_0
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Action;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    return-object v0
.end method

.method public getRemoteInputs()[Landroidx/core/app/RemoteInput;
    .locals 1

    .line 5799
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Action;->mRemoteInputs:[Landroidx/core/app/RemoteInput;

    return-object v0
.end method

.method public getSemanticAction()I
    .locals 1

    .line 5810
    iget v0, p0, Landroidx/core/app/NotificationCompat$Action;->mSemanticAction:I

    return v0
.end method

.method public getShowsUserInterface()Z
    .locals 1

    .line 5841
    iget-boolean v0, p0, Landroidx/core/app/NotificationCompat$Action;->mShowsUserInterface:Z

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 5760
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isAuthenticationRequired()Z
    .locals 1

    .line 5790
    iget-boolean v0, p0, Landroidx/core/app/NotificationCompat$Action;->mAuthenticationRequired:Z

    return v0
.end method

.method public isContextual()Z
    .locals 1

    .line 5819
    iget-boolean v0, p0, Landroidx/core/app/NotificationCompat$Action;->mIsContextual:Z

    return v0
.end method
