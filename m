Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA119319D8
	for <lists+linux-riscv@lfdr.de>; Sat,  1 Jun 2019 08:11:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=niHLo6bmIsl8OAS3XJ/oLdmUB+Cg4NXJWaoWDRlSgJU=; b=tVG3+Npytlru54
	dWIBQGwfBFbOkQygDC60t0hrtGaqBvnep+4BNJrpwHrT0ne7aW6FwKdFbp1/3qAfGHki7PksbiHye
	ebJp7Ssl02daR4RwkuIkQ5sTJgrzOa1Q3xF7vZsRlryU6dw61XqBhTAVpABcAE7Zl8yTcnHgOJTd3
	FbTjusBMyt4WkB/WnYfY5N3W4Lx60qQHz23CMBHQ92gng4StmpJfc+B/sqgMeHipa9k6nd2cEVGwa
	o5l6SiRUWBRQrjc/5RNZXXEi41ZNlo99JfkTrvTlXXZBhG4/6YbCZWHH2Op4b85/JooOg8kUjPtTy
	LxU9ruAvomHPKmxA0Z8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWxEp-0003y8-HU; Sat, 01 Jun 2019 06:11:31 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWxEl-0003xP-I6
 for linux-riscv@lists.infradead.org; Sat, 01 Jun 2019 06:11:29 +0000
Received: by mail-pf1-x444.google.com with SMTP id u22so7487994pfm.3
 for <linux-riscv@lists.infradead.org>; Fri, 31 May 2019 23:11:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id;
 bh=O+j3K6zXE5IFccZ8hsChRKn58QJIrP/3QjqkpXaSicE=;
 b=H9XjjKqdCqYBArs4d5A5VOqZDdSI/0XkBG3mQAWVvS2atr49rAkowOry/D6iiJ6hCW
 tJPj+VV0id8acOAc0GqY/9VoMnz6roJQL9kQuJLByrMXGKf/T2b5N9PE/Cf3aqrenBGg
 XwpXAUQffX4JPjTYeA5R+aO8OT1Mf539S4w0I0zcQ59QKgCShjDlxa2YWz0JWFd9GhOh
 gH173cW3eB0cjRok90yVJM4nM8aQYLonL4zC+5YH/uULc5e2Z0h9p17YkTh340UJw9MC
 icNeLZOVRtZC/Z+cUHLyJB4ZH1g3vZDVvB8I1bUtnKqN2CHdQuSfXk+47XdQkTkgf5k0
 BgyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=O+j3K6zXE5IFccZ8hsChRKn58QJIrP/3QjqkpXaSicE=;
 b=J7hamqs1ghFZNXfydX4sbBJDepk+3q9osAksiSFeNNWkz4/dng/mDL4ekT8UixkkXH
 80kdy9MjknVCPZRtH1MgP7WVH0liGK4jFD6fRVN5IfXlcJrkVZ6M5NeR4ifaE/Si3iWN
 VL7hyymqeiuYbSPK1iH8pZU+Uto2wWdECk1B5YWc+sO6FafMTTfwMNxpgJOPy8oVJ63u
 DGM71ZqIY9RL7sRKI43UvaEvN5+n/1RzG3WbUxpc92Sr28GX6/QUHRXQ3/0TsdOQDyNT
 1UEfHRS8sqbSxeTN/cfQTRnD334e4fZdthj8JpcDzQT6VUBoS7dBebGi8uKlsN4dk9Yp
 RfEw==
X-Gm-Message-State: APjAAAVQxz07+ywIZlOIiLnWhYJZXh5C5mbDMverpnAxqw0oMZvQ035/
 byYQWmfnKOnJEjG5QaL1u4OWGA==
X-Google-Smtp-Source: APXvYqxElRMoBYQ8m1mfc86RUFdW68p9ZByi5HewQQkRamsx1F3eLEbpxVK9no5w+Qs+hAW+UfpzDQ==
X-Received: by 2002:a62:5e06:: with SMTP id s6mr15266012pfb.193.1559369486705; 
 Fri, 31 May 2019 23:11:26 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id 2sm8935850pgl.40.2019.05.31.23.11.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 31 May 2019 23:11:25 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, peter@korsgaard.com,
 andrew@lunn.ch, palmer@sifive.com, paul.walmsley@sifive.com,
 sagar.kadam@sifive.com, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH REPOST v8 0/3] Extend dt bindings to support I2C on sifive
 devices and a fix broken IRQ in polling mode.
Date: Sat,  1 Jun 2019 11:41:12 +0530
Message-Id: <1559369475-15374-1-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_231127_660992_B2F83532 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The patch is based on mainline v5.2-rc1 and extends DT-bindings for Opencore based I2C IP block reimplemented
in FU540 SoC, available on HiFive unleashed board (Rev A00), and also provides a workaround for broken IRQ
which affects the already available I2C polling mode interface in mainline, for FU540-C000 chipsets.

The polling mode workaround patch fixes the CPU stall issue, when-ever i2c transfer are initiated.

This workaround checks if it's a FU540 chipset based on device tree information, and check's for open
core's IF(interrupt flag) and BUSY flags to break from the polling loop upon completion of transfer.

To test the patch, a PMOD-AD2 sensor is connected to HiFive Unleashed board over J1 connector, and
appropriate device node is added into board specific device tree as per the information provided in
dt-bindings in Documentation/devicetree/bindings/i2c/i2c-ocores.txt.
Without this workaround, the CPU stall's infinitely.

Busybox i2c utilities used to verify workaround : i2cdetect, i2cdump, i2cset, i2cget


Patch History:
V7<->V8:
-Incorporated review comments for cosmetic changes like: space, comma and period(.)

V6<->V7:
-Rectified space and tab issue in dt bindings strings.
-Implemented workaround based on i2c->flags, as per review comment on v6.

V5<->V6:
-Incorporated suggestions on v5 patch as follows:
-Reformatted compatibility strings in dt doc with one valid combination on each line.
-Removed interrupt-parents from optional property list. 
-With rebase to v5.2-rc1, the v5 variant of polling workaround PATCH becomes in-compatible.
 Till kernel v5.1 the polling mode was enabled based on i2c->flags, wherease in kernel v5.2-rc1 polling mode is set as
 master transfer algorithim at probe time itself, and i2c->flags checks are removed.
-Modified v5 to check for SiFive device type in polling function and include the workaround/fix for broken IRQ.

v4<->V5:
-Removed un-necessary checks of OCORES_FLAG_BROKEN_IRQ.

V3<->V4:
-Incorporated suggestions on v3 patch as follows:
-OCORES_FLAG_BROKEN_IRQ BIT position rectified.
-Updated BORKEN_IRQ flag checks such that if sifive device (Fu540-C000) is identified,then use polling mode as IRQ is broken.

V2<->V3:
-Incorporated review comments on v2 patch as follows:
-Rectified compatibility string sequence with the most specific one at the first (dt bindings). 
-Moved interrupts and interrupt-parent under optional property list (dt-bindings).
-Updated reference to sifive-blocks-ip-versioning.txt and URL to IP repository used (dt-bindings).
-Removed example for i2c0 device node from binding doc (dt-bindings).
-Included sifive,i2c0 device under compatibility table in i2c-ocores driver (i2c-ocores).
-Updated polling mode hooks for SoC specific fix to handle broken IRQ (i2c-ocores).


V1<->V2:
-Incorporate review comments from Andrew
-Extend dt bindings into i2c-ocores.txt instead of adding new file
-Rename SIFIVE_FLAG_POLL to OCORES_FLAG_BROKEN_IRQ

V1:
-Update dt bindings for sifive i2c devices
-Fix broken IRQ affecting i2c polling mode interface.


Sagar Shrikant Kadam (3):
  dt-bindings: i2c: extend existing opencore bindings.
  i2c-ocores: sifive: add support for i2c device on FU540-c000 SoC.
  i2c-ocores: sifive: add polling mode workaround for FU540-C000 SoC.

 .../devicetree/bindings/i2c/i2c-ocores.txt         |  9 ++++--
 drivers/i2c/busses/i2c-ocores.c                    | 33 ++++++++++++++++++++--
 2 files changed, 38 insertions(+), 4 deletions(-)

-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
