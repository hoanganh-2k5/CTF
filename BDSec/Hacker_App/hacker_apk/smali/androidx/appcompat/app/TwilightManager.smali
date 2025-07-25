.class Landroidx/appcompat/app/TwilightManager;
.super Ljava/lang/Object;
.source "TwilightManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/TwilightManager$TwilightState;
    }
.end annotation


# static fields
.field private static final SUNRISE:I = 0x6

.field private static final SUNSET:I = 0x16

.field private static final TAG:Ljava/lang/String; = "TwilightManager"

.field private static sInstance:Landroidx/appcompat/app/TwilightManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private final mTwilightState:Landroidx/appcompat/app/TwilightManager$TwilightState;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationManager"    # Landroid/location/LocationManager;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroidx/appcompat/app/TwilightManager$TwilightState;

    invoke-direct {v0}, Landroidx/appcompat/app/TwilightManager$TwilightState;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/TwilightManager;->mTwilightState:Landroidx/appcompat/app/TwilightManager$TwilightState;

    .line 70
    iput-object p1, p0, Landroidx/appcompat/app/TwilightManager;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Landroidx/appcompat/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    .line 72
    return-void
.end method

.method static getInstance(Landroid/content/Context;)Landroidx/appcompat/app/TwilightManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 50
    sget-object v0, Landroidx/appcompat/app/TwilightManager;->sInstance:Landroidx/appcompat/app/TwilightManager;

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 52
    new-instance v0, Landroidx/appcompat/app/TwilightManager;

    .line 53
    const-string v1, "location"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/TwilightManager;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v0, Landroidx/appcompat/app/TwilightManager;->sInstance:Landroidx/appcompat/app/TwilightManager;

    .line 55
    :cond_0
    sget-object v0, Landroidx/appcompat/app/TwilightManager;->sInstance:Landroidx/appcompat/app/TwilightManager;

    return-object v0
.end method

.method private getLastKnownLocation()Landroid/location/Location;
    .locals 7

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "coarseLoc":Landroid/location/Location;
    const/4 v1, 0x0

    .line 110
    .local v1, "fineLoc":Landroid/location/Location;
    iget-object v2, p0, Landroidx/appcompat/app/TwilightManager;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v2, v3}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 112
    .local v2, "permission":I
    if-nez v2, :cond_0

    .line 113
    const-string v3, "network"

    invoke-direct {p0, v3}, Landroidx/appcompat/app/TwilightManager;->getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 116
    :cond_0
    iget-object v3, p0, Landroidx/appcompat/app/TwilightManager;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v3, v4}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 118
    if-nez v2, :cond_1

    .line 119
    const-string v3, "gps"

    invoke-direct {p0, v3}, Landroidx/appcompat/app/TwilightManager;->getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 122
    :cond_1
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 124
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    move-object v3, v1

    goto :goto_0

    :cond_2
    move-object v3, v0

    :goto_0
    return-object v3

    .line 127
    :cond_3
    if-eqz v1, :cond_4

    move-object v3, v1

    goto :goto_1

    :cond_4
    move-object v3, v0

    :goto_1
    return-object v3
.end method

.method private getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .line 134
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Landroidx/appcompat/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 139
    :cond_0
    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TwilightManager"

    const-string v2, "Failed to get last known location"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private isStateValid()Z
    .locals 4

    .line 144
    iget-object v0, p0, Landroidx/appcompat/app/TwilightManager;->mTwilightState:Landroidx/appcompat/app/TwilightManager$TwilightState;

    iget-wide v0, v0, Landroidx/appcompat/app/TwilightManager$TwilightState;->nextUpdate:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static setInstance(Landroidx/appcompat/app/TwilightManager;)V
    .locals 0
    .param p0, "twilightManager"    # Landroidx/appcompat/app/TwilightManager;

    .line 60
    sput-object p0, Landroidx/appcompat/app/TwilightManager;->sInstance:Landroidx/appcompat/app/TwilightManager;

    .line 61
    return-void
.end method

.method private updateState(Landroid/location/Location;)V
    .locals 17
    .param p1, "location"    # Landroid/location/Location;

    .line 148
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/appcompat/app/TwilightManager;->mTwilightState:Landroidx/appcompat/app/TwilightManager$TwilightState;

    .line 149
    .local v1, "state":Landroidx/appcompat/app/TwilightManager$TwilightState;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 150
    .local v3, "now":J
    invoke-static {}, Landroidx/appcompat/app/TwilightCalculator;->getInstance()Landroidx/appcompat/app/TwilightCalculator;

    move-result-object v5

    .line 153
    .local v5, "calculator":Landroidx/appcompat/app/TwilightCalculator;
    const-wide/32 v12, 0x5265c00

    sub-long v6, v3, v12

    .line 154
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    .line 153
    invoke-virtual/range {v5 .. v11}, Landroidx/appcompat/app/TwilightCalculator;->calculateTwilight(JDD)V

    .line 157
    move-object v2, v5

    .end local v5    # "calculator":Landroidx/appcompat/app/TwilightCalculator;
    .local v2, "calculator":Landroidx/appcompat/app/TwilightCalculator;
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-virtual/range {v2 .. v8}, Landroidx/appcompat/app/TwilightCalculator;->calculateTwilight(JDD)V

    .line 158
    move-object v5, v2

    .end local v2    # "calculator":Landroidx/appcompat/app/TwilightCalculator;
    .restart local v5    # "calculator":Landroidx/appcompat/app/TwilightCalculator;
    iget v2, v5, Landroidx/appcompat/app/TwilightCalculator;->state:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    move v2, v6

    .line 159
    .local v2, "isNight":Z
    iget-wide v14, v5, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    .line 160
    .local v14, "todaySunrise":J
    iget-wide v6, v5, Landroidx/appcompat/app/TwilightCalculator;->sunset:J

    .line 163
    .local v6, "todaySunset":J
    add-long v8, v3, v12

    .line 164
    move-wide v10, v6

    move-wide v6, v8

    .end local v6    # "todaySunset":J
    .local v10, "todaySunset":J
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    move-wide v12, v10

    .end local v10    # "todaySunset":J
    .local v12, "todaySunset":J
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    .line 163
    invoke-virtual/range {v5 .. v11}, Landroidx/appcompat/app/TwilightCalculator;->calculateTwilight(JDD)V

    .line 165
    iget-wide v6, v5, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    .line 168
    .local v6, "tomorrowSunrise":J
    const-wide/16 v8, 0x0

    .line 169
    .local v8, "nextUpdate":J
    const-wide/16 v10, -0x1

    cmp-long v16, v14, v10

    if-eqz v16, :cond_4

    cmp-long v10, v12, v10

    if-nez v10, :cond_1

    goto :goto_2

    .line 173
    :cond_1
    cmp-long v10, v3, v12

    if-lez v10, :cond_2

    .line 174
    add-long/2addr v8, v6

    goto :goto_1

    .line 175
    :cond_2
    cmp-long v10, v3, v14

    if-lez v10, :cond_3

    .line 176
    add-long/2addr v8, v12

    goto :goto_1

    .line 178
    :cond_3
    add-long/2addr v8, v14

    .line 181
    :goto_1
    const-wide/32 v10, 0xea60

    add-long/2addr v8, v10

    goto :goto_3

    .line 171
    :cond_4
    :goto_2
    const-wide/32 v10, 0x2932e00

    add-long v8, v3, v10

    .line 185
    :goto_3
    iput-boolean v2, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->isNight:Z

    .line 186
    iput-wide v8, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->nextUpdate:J

    .line 187
    return-void
.end method


# virtual methods
.method isNight()Z
    .locals 5

    .line 80
    iget-object v0, p0, Landroidx/appcompat/app/TwilightManager;->mTwilightState:Landroidx/appcompat/app/TwilightManager$TwilightState;

    .line 82
    .local v0, "state":Landroidx/appcompat/app/TwilightManager$TwilightState;
    invoke-direct {p0}, Landroidx/appcompat/app/TwilightManager;->isStateValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iget-boolean v1, v0, Landroidx/appcompat/app/TwilightManager$TwilightState;->isNight:Z

    return v1

    .line 88
    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/app/TwilightManager;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v1

    .line 89
    .local v1, "location":Landroid/location/Location;
    if-eqz v1, :cond_1

    .line 90
    invoke-direct {p0, v1}, Landroidx/appcompat/app/TwilightManager;->updateState(Landroid/location/Location;)V

    .line 91
    iget-boolean v2, v0, Landroidx/appcompat/app/TwilightManager$TwilightState;->isNight:Z

    return v2

    .line 94
    :cond_1
    const-string v2, "TwilightManager"

    const-string v3, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 101
    .local v2, "calendar":Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 102
    .local v3, "hour":I
    const/4 v4, 0x6

    if-lt v3, v4, :cond_3

    const/16 v4, 0x16

    if-lt v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v4, 0x1

    :goto_1
    return v4
.end method
