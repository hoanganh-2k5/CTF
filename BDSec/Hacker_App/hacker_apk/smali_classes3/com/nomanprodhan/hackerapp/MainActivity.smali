.class public Lcom/nomanprodhan/hackerapp/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# static fields
.field private static final Lq12Zy:J = 0x1388L

.field private static final dR6uZ1:I = 0x5

.field private static final jN5fC2:[I

.field private static final mK4pJ1:[I

.field private static final rX3gT9:[Ljava/lang/String;

.field private static final vY7kD3:[I

.field private static final wQ8vL0:[Ljava/lang/String;

.field private static final zN2LpB:Ljava/lang/String; = "ioFOE6/xXoxB5M02UsaVQAhuQVC5f8+PMMgwOwGbmE0R7n6qyRQ9qwCzCgDVYWc6"


# instance fields
.field private bC8xR2:Landroid/widget/EditText;

.field private hY4pQ5:Landroid/os/Handler;

.field private pO9mE4:Landroid/widget/Button;

.field private rL7oP0:Ljava/util/Random;

.field private sD3aH6:Landroid/widget/ScrollView;

.field private tR1nU7:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 26
    const/16 v0, 0x8

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "4AC93E17"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "DE9A3214"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "D2C3E1F0"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "BEEFCAFE"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "C0FFEE01"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "BAADF00D"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "CAFEBABE"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, "8BADF00D"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    sput-object v1, Lcom/nomanprodhan/hackerapp/MainActivity;->rX3gT9:[Ljava/lang/String;

    .line 31
    sget-object v1, Lcom/nomanprodhan/hackerapp/MainActivity;->rX3gT9:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/nomanprodhan/hackerapp/MainActivity;->mK4pJ1:[I

    .line 33
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/nomanprodhan/hackerapp/MainActivity;->rX3gT9:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 34
    sget-object v2, Lcom/nomanprodhan/hackerapp/MainActivity;->mK4pJ1:[I

    sget-object v11, Lcom/nomanprodhan/hackerapp/MainActivity;->rX3gT9:[Ljava/lang/String;

    aget-object v11, v11, v1

    const/16 v12, 0x10

    invoke-static {v11, v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v11

    long-to-int v11, v11

    aput v11, v2, v1

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    .end local v1    # "i":I
    :cond_0
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "[INFO] Initializing hack on %s..."

    aput-object v2, v1, v3

    const-string v2, "[DEBUG] Resolving DNS for %s"

    aput-object v2, v1, v4

    const-string v2, "[TRACE] DNS lookup returned IP 192.0.2.1"

    aput-object v2, v1, v5

    const-string v2, "[INFO] Performing TCP handshake with 192.0.2.1:443"

    aput-object v2, v1, v6

    const-string v2, "[DEBUG] Handshake successful, starting TLS negotiation"

    aput-object v2, v1, v7

    const-string v2, "[WARN] Certificate validation bypassed"

    aput-object v2, v1, v8

    const-string v2, "[INFO] Authenticating via SSH on %s"

    aput-object v2, v1, v9

    const-string v2, "[DEBUG] Brute\u2011forcing credentials..."

    aput-object v2, v1, v10

    const-string v2, "[TRACE] Found valid creds: sys-user:sYsUSER2025BDSEC"

    aput-object v2, v1, v0

    const/16 v0, 0x9

    const-string v2, "[INFO] Uploading payload.bin"

    aput-object v2, v1, v0

    const/16 v0, 0xa

    const-string v2, "[INFO] Executing payload via sudo"

    aput-object v2, v1, v0

    const/16 v0, 0xb

    const-string v2, "[INFO] Finalizing exploit..."

    aput-object v2, v1, v0

    sput-object v1, Lcom/nomanprodhan/hackerapp/MainActivity;->wQ8vL0:[Ljava/lang/String;

    .line 59
    const v0, -0x7a695848

    const v1, -0x36251404

    const v2, 0xf1e2d3c

    const v3, 0x4b5a6978    # 1.4313848E7f

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/nomanprodhan/hackerapp/MainActivity;->vY7kD3:[I

    .line 65
    const/16 v0, 0x100

    new-array v1, v0, [I

    sput-object v1, Lcom/nomanprodhan/hackerapp/MainActivity;->jN5fC2:[I

    .line 67
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 68
    sget-object v2, Lcom/nomanprodhan/hackerapp/MainActivity;->jN5fC2:[I

    mul-int/lit8 v3, v1, 0x49

    add-int/lit8 v3, v3, 0x29

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v1

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 70
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 77
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/nomanprodhan/hackerapp/MainActivity;->rL7oP0:Ljava/util/Random;

    return-void
.end method

.method private static aP4wK7([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "off"    # I

    .line 210
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private cQ02jP(Ljava/lang/String;)V
    .locals 3
    .param p1, "x"    # Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/nomanprodhan/hackerapp/MainActivity;->tR1nU7:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/nomanprodhan/hackerapp/MainActivity;->sD3aH6:Landroid/widget/ScrollView;

    new-instance v1, Lcom/nomanprodhan/hackerapp/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/nomanprodhan/hackerapp/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nomanprodhan/hackerapp/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 156
    return-void
.end method

.method private dP65kN(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "u"    # Ljava/lang/String;

    .line 105
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 106
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "h":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "www."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 108
    :cond_0
    if-eqz v1, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    move-object v2, p1

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 109
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "h":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static gF6mD2([BII)V
    .locals 2
    .param p0, "b"    # [B
    .param p1, "off"    # I
    .param p2, "v"    # I

    .line 214
    ushr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 215
    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 216
    add-int/lit8 v0, p1, 0x2

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 217
    add-int/lit8 v0, p1, 0x3

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    .line 218
    return-void
.end method

.method private static iP7sV3([BI)[B
    .locals 1
    .param p0, "d"    # [B
    .param p1, "k1"    # I

    .line 160
    invoke-static {p0, p1}, Lcom/nomanprodhan/hackerapp/MainActivity;->oX8jZ6([BI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nomanprodhan/hackerapp/MainActivity;->uE9rC5([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nomanprodhan/hackerapp/MainActivity;->yW0qH1([B)[B

    move-result-object v0

    return-object v0
.end method

.method private static oX8jZ6([BI)[B
    .locals 6
    .param p0, "d"    # [B
    .param p1, "k"    # I

    .line 164
    array-length v0, p0

    .line 165
    .local v0, "n":I
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 166
    .local v1, "tmp":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    div-int/lit8 v3, v0, 0x2

    if-ge v2, v3, :cond_0

    .line 167
    aget-byte v3, v1, v2

    .line 168
    .local v3, "t":B
    add-int/lit8 v4, v0, -0x1

    sub-int/2addr v4, v2

    aget-byte v4, v1, v4

    aput-byte v4, v1, v2

    .line 169
    add-int/lit8 v4, v0, -0x1

    sub-int/2addr v4, v2

    aput-byte v3, v1, v4

    .line 166
    .end local v3    # "t":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 172
    rem-int/lit8 v3, v2, 0x4

    mul-int/lit8 v3, v3, 0x8

    .line 173
    .local v3, "s":I
    aget-byte v4, v1, v2

    ushr-int v5, p1, v3

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 171
    .end local v3    # "s":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 175
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method private static uE9rC5([B)[B
    .locals 13
    .param p0, "d"    # [B

    .line 179
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x8

    rsub-int/lit8 v0, v0, 0x8

    .local v0, "pad":I
    array-length v1, p0

    add-int/2addr v1, v0

    .line 180
    .local v1, "L":I
    new-array v2, v1, [B

    .line 181
    .local v2, "b":[B
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    array-length v3, p0

    int-to-byte v4, v0

    invoke-static {v2, v3, v1, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 184
    const v3, -0x61c88647

    .line 185
    .local v3, "D":I
    new-array v4, v1, [B

    .line 186
    .local v4, "o":[B
    const/4 v5, 0x0

    .local v5, "off":I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 187
    invoke-static {v2, v5}, Lcom/nomanprodhan/hackerapp/MainActivity;->aP4wK7([BI)I

    move-result v6

    .local v6, "v0":I
    add-int/lit8 v7, v5, 0x4

    invoke-static {v2, v7}, Lcom/nomanprodhan/hackerapp/MainActivity;->aP4wK7([BI)I

    move-result v7

    .local v7, "v1":I
    const/4 v8, 0x0

    .line 188
    .local v8, "sum":I
    const/4 v9, 0x0

    .local v9, "r":I
    :goto_1
    const/16 v10, 0x10

    if-ge v9, v10, :cond_0

    .line 189
    const v10, 0x61c88647

    sub-int/2addr v8, v10

    .line 190
    shl-int/lit8 v10, v7, 0x4

    ushr-int/lit8 v11, v7, 0x5

    xor-int/2addr v10, v11

    add-int/2addr v10, v7

    sget-object v11, Lcom/nomanprodhan/hackerapp/MainActivity;->vY7kD3:[I

    and-int/lit8 v12, v8, 0x3

    aget v11, v11, v12

    add-int/2addr v11, v8

    xor-int/2addr v10, v11

    add-int/2addr v6, v10

    .line 191
    shl-int/lit8 v10, v6, 0x4

    ushr-int/lit8 v11, v6, 0x5

    xor-int/2addr v10, v11

    add-int/2addr v10, v6

    sget-object v11, Lcom/nomanprodhan/hackerapp/MainActivity;->vY7kD3:[I

    ushr-int/lit8 v12, v8, 0xb

    and-int/lit8 v12, v12, 0x3

    aget v11, v11, v12

    add-int/2addr v11, v8

    xor-int/2addr v10, v11

    add-int/2addr v7, v10

    .line 188
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 193
    .end local v9    # "r":I
    :cond_0
    invoke-static {v4, v5, v6}, Lcom/nomanprodhan/hackerapp/MainActivity;->gF6mD2([BII)V

    .line 194
    add-int/lit8 v9, v5, 0x4

    invoke-static {v4, v9, v7}, Lcom/nomanprodhan/hackerapp/MainActivity;->gF6mD2([BII)V

    .line 186
    .end local v6    # "v0":I
    .end local v7    # "v1":I
    .end local v8    # "sum":I
    add-int/lit8 v5, v5, 0x8

    goto :goto_0

    .line 196
    .end local v5    # "off":I
    :cond_1
    return-object v4
.end method

.method private static yW0qH1([B)[B
    .locals 5
    .param p0, "d"    # [B

    .line 200
    array-length v0, p0

    new-array v0, v0, [B

    .line 201
    .local v0, "o":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 202
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 203
    .local v2, "x":I
    sget-object v3, Lcom/nomanprodhan/hackerapp/MainActivity;->jN5fC2:[I

    aget v2, v3, v2

    .line 204
    shl-int/lit8 v3, v2, 0x5

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v4, v2, 0x3

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 201
    .end local v2    # "x":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private zM6nH3(Ljava/lang/String;)V
    .locals 13
    .param p1, "d0M1a"    # Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/nomanprodhan/hackerapp/MainActivity;->pO9mE4:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 116
    iget-object v0, p0, Lcom/nomanprodhan/hackerapp/MainActivity;->tR1nU7:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v0, "aU1dG9":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/nomanprodhan/hackerapp/MainActivity;->rL7oP0:Ljava/util/Random;

    sget-object v3, Lcom/nomanprodhan/hackerapp/MainActivity;->rX3gT9:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 121
    .local v2, "sL2kM8":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DEBUG] Trying module id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/nomanprodhan/hackerapp/MainActivity;->rX3gT9:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v3, Lcom/nomanprodhan/hackerapp/MainActivity;->wQ8vL0:[Ljava/lang/String;

    array-length v4, v3

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 125
    .local v5, "tpl":Ljava/lang/String;
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v5    # "tpl":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_0
    const-string v1, "root:toor123"

    .line 130
    .local v1, "fH8iK4":Ljava/lang/String;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    sget-object v4, Lcom/nomanprodhan/hackerapp/MainActivity;->mK4pJ1:[I

    aget v4, v4, v2

    invoke-static {v3, v4}, Lcom/nomanprodhan/hackerapp/MainActivity;->iP7sV3([BI)[B

    move-result-object v3

    .line 132
    .local v3, "cB2vM6":[B
    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, "zX9bT1":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WARN] Protected data found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    const-string v5, "2025.bdsec-ctf.com"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 137
    const-string v5, "[SUCCESS] Root Account Password: ioFOE6/xXoxB5M02UsaVQAhuQVC5f8+PMMgwOwGbmE0R7n6qyRQ9qwCzCgDVYWc6"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const-wide/16 v7, 0x1388

    if-ge v5, v6, :cond_2

    .line 141
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 142
    .local v6, "ln":Ljava/lang/String;
    iget-object v9, p0, Lcom/nomanprodhan/hackerapp/MainActivity;->hY4pQ5:Landroid/os/Handler;

    new-instance v10, Lcom/nomanprodhan/hackerapp/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v10, p0, v6}, Lcom/nomanprodhan/hackerapp/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/nomanprodhan/hackerapp/MainActivity;Ljava/lang/String;)V

    int-to-long v11, v5

    mul-long/2addr v11, v7

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    .end local v6    # "ln":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 144
    .end local v5    # "i":I
    :cond_2
    iget-object v5, p0, Lcom/nomanprodhan/hackerapp/MainActivity;->hY4pQ5:Landroid/os/Handler;

    new-instance v6, Lcom/nomanprodhan/hackerapp/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0, p1}, Lcom/nomanprodhan/hackerapp/MainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/nomanprodhan/hackerapp/MainActivity;Ljava/lang/String;)V

    .line 148
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    int-to-long v9, v9

    mul-long/2addr v9, v7

    .line 144
    invoke-virtual {v5, v6, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    return-void
.end method


# virtual methods
.method synthetic lambda$cQ02jP$3$com-nomanprodhan-hackerapp-MainActivity()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/nomanprodhan/hackerapp/MainActivity;->sD3aH6:Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    return-void
.end method

.method synthetic lambda$onCreate$0$com-nomanprodhan-hackerapp-MainActivity(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 93
    iget-object v0, p0, Lcom/nomanprodhan/hackerapp/MainActivity;->bC8xR2:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "uH14z":Ljava/lang/String;
    sget-object v1, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    const-string v1, "Please enter a valid URL"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 96
    return-void

    .line 98
    :cond_0
    invoke-direct {p0, v0}, Lcom/nomanprodhan/hackerapp/MainActivity;->dP65kN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "d0M1a":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/nomanprodhan/hackerapp/MainActivity;->zM6nH3(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method synthetic lambda$zM6nH3$1$com-nomanprodhan-hackerapp-MainActivity(Ljava/lang/String;)V
    .locals 0
    .param p1, "ln"    # Ljava/lang/String;

    .line 142
    invoke-direct {p0, p1}, Lcom/nomanprodhan/hackerapp/MainActivity;->cQ02jP(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$zM6nH3$2$com-nomanprodhan-hackerapp-MainActivity(Ljava/lang/String;)V
    .locals 2
    .param p1, "d0M1a"    # Ljava/lang/String;

    .line 145
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/nomanprodhan/hackerapp/MainActivity;->cQ02jP(Ljava/lang/String;)V

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>> SUCCESS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has been hacked!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nomanprodhan/hackerapp/MainActivity;->cQ02jP(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/nomanprodhan/hackerapp/MainActivity;->pO9mE4:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 148
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "s2M8k"    # Landroid/os/Bundle;

    .line 83
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    sget v0, Lcom/nomanprodhan/hackerapp/R$layout;->activity_main:I

    invoke-virtual {p0, v0}, Lcom/nomanprodhan/hackerapp/MainActivity;->setContentView(I)V

    .line 86
    sget v0, Lcom/nomanprodhan/hackerapp/R$id;->url_input:I

    invoke-virtual {p0, v0}, Lcom/nomanprodhan/hackerapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nomanprodhan/hackerapp/MainActivity;->bC8xR2:Landroid/widget/EditText;

    .line 87
    sget v0, Lcom/nomanprodhan/hackerapp/R$id;->hack_button:I

    invoke-virtual {p0, v0}, Lcom/nomanprodhan/hackerapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nomanprodhan/hackerapp/MainActivity;->pO9mE4:Landroid/widget/Button;

    .line 88
    sget v0, Lcom/nomanprodhan/hackerapp/R$id;->log_text:I

    invoke-virtual {p0, v0}, Lcom/nomanprodhan/hackerapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nomanprodhan/hackerapp/MainActivity;->tR1nU7:Landroid/widget/TextView;

    .line 89
    sget v0, Lcom/nomanprodhan/hackerapp/R$id;->scroll_logs:I

    invoke-virtual {p0, v0}, Lcom/nomanprodhan/hackerapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/nomanprodhan/hackerapp/MainActivity;->sD3aH6:Landroid/widget/ScrollView;

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nomanprodhan/hackerapp/MainActivity;->hY4pQ5:Landroid/os/Handler;

    .line 92
    iget-object v0, p0, Lcom/nomanprodhan/hackerapp/MainActivity;->pO9mE4:Landroid/widget/Button;

    new-instance v1, Lcom/nomanprodhan/hackerapp/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/nomanprodhan/hackerapp/MainActivity$$ExternalSyntheticLambda3;-><init>(Lcom/nomanprodhan/hackerapp/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    return-void
.end method
