Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1281725054
	for <lists+linux-riscv@lfdr.de>; Tue, 21 May 2019 15:33:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KuVn0IAKKuu4g6QRafHBpDkRnETYO3gxWGWu3zoH2Xg=; b=jE+NOzsIjKEmbQ
	m6ilEGZR3ER1uLomeBUZlZNAIKigjfNhSiMdMAjHwzXsjhSBQtvm6p0F0dOtt8/UkXOxTBIuQ1VnY
	ZIgxxanGh/xPQbqiQZ231PdYv0aflo0aO5bkGWDexH8dAbhBjnHFRHiEY8NQyyr4QgxTg9ywt1pyQ
	YwLIYVaKzAf+4ZjWW9mG3pWjTgTgxIKO2CxILSld6P7/lAK/kVW1BvMh/PF/ofSsMfCKX5nqxkE5L
	s5h8IdLSuscAk7TIoujqeTe3+J6ZSMjo+aEKY6/pjcmYhzA1n8bJaMaAK2nEnl2ZEFQpRgh92b/b2
	nDHqfrQGdP26BqOzmxWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT4t9-0008AG-RI; Tue, 21 May 2019 13:33:07 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT4t6-00089C-5V
 for linux-riscv@lists.infradead.org; Tue, 21 May 2019 13:33:05 +0000
Received: by mail-pl1-x644.google.com with SMTP id p1so3091067plo.2
 for <linux-riscv@lists.infradead.org>; Tue, 21 May 2019 06:33:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id;
 bh=6DhNXUXvjOx5TdLJG046rhe1p/zFy9SRsFvLrb3LWAY=;
 b=S7QjycdUhRwSZortZ4EL6ZO0RapptH+4FI6NLggI3kDl5jIRR9t2VtWQ0ZwxayAbKr
 MwpfA5hW7RZHgM95EWdEHj9vjZfPfOD+1rN893a8xfMzJvoSIG+Arva07zAxi2XyubQm
 E6+wDekbmus6Zf1BFBUYL5fis5wa+ybZgMgHJkZbAWpaUaT3eU3Fjcs1lRmjL2qCsk0V
 DKdPZYPjtoOxk0hAHarIaE3Kbenw789Gx2y5SAfQvrludnt1YckX/9cCt8i2KoTovDjb
 H0y2UqJpADasHcsIcggS2isUgahHgSFRlhCkkJ7r4dxNWOiocJVHFTkbyHaBufTVEj69
 uOag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=6DhNXUXvjOx5TdLJG046rhe1p/zFy9SRsFvLrb3LWAY=;
 b=mKAHhTa4s7WZmYROK5satm2WSW4ns8A+Xt1VYP9D1VuSTAW99KdJ6oszWgnzCOJHsk
 NQ8DKRhpUOhwceva/yCMzlg/LFa4HyAikSCBw7xTtAnPvQpowe3iVujpKU3BfoQSnK61
 BMN0qTvFWfHodPbNxpmFeJGSYpHlSCOzJ7ywscCHdD8F2agIh4yzf3b3GxGdCOtu9OpX
 9Cl4ONjMcWLPs4a713sadD0Itpi+8hdsePNQxCabi2vEjM3xBQSUVOZuzdUF5wfLxS01
 +5O/Vr9+w4+A7b8zLe+a8+kmTmcJwIScQ7qEBFAtVDh3mXlhSdl+Fi9GupAZDnwW7zrm
 nSwg==
X-Gm-Message-State: APjAAAWZPCOyBguWt2iILGobLYwAWfPD8x9dxXchlKddFH60Jh/2/bTO
 cTeQFnRdncCwQeR3yvDhnUOSuQ==
X-Google-Smtp-Source: APXvYqyAjZ5acKN8+o7pqrj3tahQQc6YSy7LvT8KCU7b2OQClCwcHqK3rZuDV4SHB1yXbH6zwRvxiA==
X-Received: by 2002:a17:902:3103:: with SMTP id
 w3mr7828797plb.187.1558445582924; 
 Tue, 21 May 2019 06:33:02 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id
 d15sm65368906pfm.186.2019.05.21.06.32.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 21 May 2019 06:33:02 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, peter@korsgaard.com,
 andrew@lunn.ch, palmer@sifive.com, paul.walmsley@sifive.com,
 sagar.kadam@sifive.com, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v6 0/3] Extend dt bindings to support I2C on sifive devices
 and a fix broken IRQ in polling mode.
Date: Tue, 21 May 2019 19:02:51 +0530
Message-Id: <1558445574-16471-1-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_063304_290123_8F5C2A37 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
dt-bindings in Documentation/devicetree/bindings/i2c/i2c-sifive.txt.
Without this workaround, the CPU stall's infinitely.

Busybox i2c utilities used to verify workaround : i2cdetect, i2cdump, i2cset, i2cget


Patch History:
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

 .../devicetree/bindings/i2c/i2c-ocores.txt         |  9 ++++-
 drivers/i2c/busses/i2c-ocores.c                    | 47 +++++++++++++++++++---
 2 files changed, 49 insertions(+), 7 deletions(-)

-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
