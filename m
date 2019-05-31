Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF01314B6
	for <lists+linux-riscv@lfdr.de>; Fri, 31 May 2019 20:30:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=niHLo6bmIsl8OAS3XJ/oLdmUB+Cg4NXJWaoWDRlSgJU=; b=SyFc75EJHEl3TF
	D6eCdnqVKl2gzHOKb6ix8ZbBtQmbXgaXo50DqmraI637zm41XLqAcTdUcwTMXaoPZBNzF79Tm79vz
	ZA851wT+TUAqPREmUzYyTTCZX49jwSlapAYZEhaq2uuO5SzafNxFDztaRmM7M9so9d4/gKHyCKqy4
	110Hju+pnkU5sAKO9tcb+cDalqh3+6fKRpN9PkByeCr8o0V9gjll0mNFeiUYf9+4z+PcZ0IGbIZt6
	Y953AhAu77CGZkqoLUJpuS/oTE202zzeNzDGoeSZ1gw2gnurvt7Y0144UvxxweHXXYFRyKxA2BJ8I
	29p5e6yc2zUk0AlwR2tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWmIe-00047S-H5; Fri, 31 May 2019 18:30:44 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWmIb-00046u-E0
 for linux-riscv@lists.infradead.org; Fri, 31 May 2019 18:30:42 +0000
Received: by mail-pl1-x644.google.com with SMTP id e7so3855994pln.4
 for <linux-riscv@lists.infradead.org>; Fri, 31 May 2019 11:30:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id;
 bh=O+j3K6zXE5IFccZ8hsChRKn58QJIrP/3QjqkpXaSicE=;
 b=SWslyCxAFsWjWsrlNYIrP9FrVWDVXzVrheDU9AOZXEQd80tjpHW8Wak8RYA6fPRKHB
 Sg44lM5zV9HMrV0jxxVClT4RP6UlYdVW8fnKV5sYoOK+Bayco5Ye8ukpOfvM/rM57A7z
 EMRoLE6YPRT0b3fSODS6osICMQ542+LDIbmEvTP0ovuPb8s5nNKHSnZnTGYzBwnLgxSA
 +WNMMvFvfdd9YYbMQwkM4IS/j5hqEVKYRvnIvV27Nu3Qruvp2M44eQ3gsO7fBYkYDF9Q
 m2M0U9nhZpL3YYjbc+sO6GDlvw+k1gIEWQ3NdWMmADAM/RbCpdlZ+FYMjaAq3/NsF/Bc
 9PPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=O+j3K6zXE5IFccZ8hsChRKn58QJIrP/3QjqkpXaSicE=;
 b=ctnjCSujjy5pL1MYWePiSh77TbZLjXyr+mzEEBr74v6LPIVo3UJ3qAgA5lFG2Y9UPe
 hZvrruYSE/OraFQ8qjvA5HkrHLxEJOr/aowjc572W2MKr7k/nyYffLaelgyfeUHEeyk9
 qTL2pYLwcq+YtS49lBW2S/2ve5IWwoyvZEm9OyAT5IBMdvIAYkfiUG+bvS2PbiBJ7ksJ
 Tnb1WFJWG3ODDPWiW3azBskdIaOhtuYRnU9bOjEshQUYvTIEc5nT0UOHeRP9taQoFEvt
 qX1iiO5wVMs/KEl6SWy5yJELV3tunMOlhv1oib0URtntzkoA06+oUO2Fh3Tp0x/mx6IH
 TT2A==
X-Gm-Message-State: APjAAAWBTZYYpq8SiovXZxRDFRjUtC/VlkVo4+10clG/i3+dFcaAtaUm
 BmAVSf46kEjKryuFs/4nD8gmIA==
X-Google-Smtp-Source: APXvYqx+kbS+qlhl2y5SToTHB7pOFTvniSKiYfiMThhCx/x/F5GEOcBhNwt9XZcYZxTjq6+OXirZeQ==
X-Received: by 2002:a17:902:9b85:: with SMTP id
 y5mr11191979plp.313.1559327439860; 
 Fri, 31 May 2019 11:30:39 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id 85sm10039511pgb.52.2019.05.31.11.30.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 31 May 2019 11:30:37 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, peter@korsgaard.com,
 andrew@lunn.ch, palmer@sifive.com, paul.walmsley@sifive.com,
 sagar.kadam@sifive.com, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH REPOST v8 0/3] Extend dt bindings to support I2C on sifive
 devices and a fix broken IRQ in polling mode.
Date: Sat,  1 Jun 2019 00:00:20 +0530
Message-Id: <1559327423-13001-1-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_113041_610551_080C062C 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
