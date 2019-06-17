Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1AEE48F0C
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 21:30:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=SrHO0Gslq+35FbXT5i528yCFtAk3gym+rFgk+BwUDDI=; b=pCo
	xDtVMIcnQgG3p3lyOi6Q2qKRmnVHlpT/5B/7V3n2DoMazWpZTMOxnyMTz48R4MyyDx4QuL+PHL7lS
	SdgDK6wWrZKdm3rLXZ7wqKqv68h+SbCLlOxtM9yxbAy3aJKe9LeZpKco7M8QNLf4rlb/6xhXI/gvf
	DrmRCLpqANEJFGaIECOkj9iLMIq6qi+UA9jFifXtfqxfB/ip1FWuA/nInmLpiKdAB5wQvMNGOrnJi
	6G+K8S8R8N8FlheZpgX7QW5uvmoDDr4hPCo7TzyTl+6dAJe7B36zFrrPOAjd7TAkc96q83z+Knljn
	ZIEYjJN5hWtFRiHrhhwqfY3Hu5Iw70w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcxKL-0004VF-JX; Mon, 17 Jun 2019 19:30:01 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcxKH-0004Qb-0i
 for linux-riscv@lists.infradead.org; Mon, 17 Jun 2019 19:29:59 +0000
Received: by mail-wr1-x444.google.com with SMTP id p13so11236973wru.10
 for <linux-riscv@lists.infradead.org>; Mon, 17 Jun 2019 12:29:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=+faE7f2i5p9Exif1Tqt8gr1N97noY/QwTIkSkdvT3og=;
 b=bkgOc2/3ZUHCQSxFhp6RqNALsLKkn4tZVsorTRiDz7F3zc3bQNADsPmg82zVowvcZJ
 p42/8gSGuUzolct0ah3c6bnkOCgs+kXl9gnviB8mmoqexielke/sCZJ3utz7f7QpI9UM
 JrNWLHi8YsNpZFFs9zC7pApEVclq21iVyoY+QJhTnfNBHVbq72VDY8XbJ3ztLDXkQ1cq
 wuV5Dl6OA8QDybIHh193Gm0dea7yQrrKMTdQItwYgepNffLLuFpoxT284OYmKzeiWUY3
 c53hiU2XvpjpHLz2gQEvcNoGoGYlsvG4FCyYxZ9/GvD1Bfx8z9WgRBG3yNlwfKl9zoFB
 3ugw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=+faE7f2i5p9Exif1Tqt8gr1N97noY/QwTIkSkdvT3og=;
 b=TR0pFuECTteYwqMIqBINhO3VktMZQa/bamZFbrrc9bv7wdXvG5LaZlfY4TwyzVOk3v
 TuR+VQsha/HI9wGpxmFyzoAd49KKuVYobD38bivw3Rn/S6o4i0OSGLFepOITQ0+g0Hlc
 vfDWXIm9HJOVCJi6lgvbfoaBsphtlHgSYexBXR57QgzNPusLmiiLIpj4GS8Ywjsc4+La
 YX4Yt/DG0sxUehgPywPbhjRULFVxwWGCr4CWQUTEbu+J2petCe2eh8mTIzNIowR10P+x
 /a/pYBUhA/zQGfs5lIwU3btzsQcY2nuaJ+SJZcHlL9lD+rxAViPCoSzYOVzrVpjkokve
 iXqA==
X-Gm-Message-State: APjAAAXPbLa2M8iAgQwBfkDo0fUQsm/1oNwbTJ7ap+5r/KlazSIuYSnP
 LUwP1CL+9eo/aSPCLwDbIImVog==
X-Google-Smtp-Source: APXvYqyH0bOBhea4+sw3VkCF82H7R+OQIXS9OUZ21Ftc6szY5AP5ukvB6GwAFBNv0VgCDCQyTYIy4w==
X-Received: by 2002:a5d:494d:: with SMTP id r13mr25518129wrs.152.1560799794897; 
 Mon, 17 Jun 2019 12:29:54 -0700 (PDT)
Received: from loys-ubuntu-BY1835A49200471.thefacebook.com
 (cust-west-pareq2-46-193-13-130.wb.wifirst.net. [46.193.13.130])
 by smtp.googlemail.com with ESMTPSA id u18sm9412034wrr.11.2019.06.17.12.29.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 17 Jun 2019 12:29:54 -0700 (PDT)
From: Loys Ollivier <lollivier@baylibre.com>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH 0/3] riscv: add SOC_SIFIVE config for SiFive specific resource
Date: Mon, 17 Jun 2019 21:29:47 +0200
Message-Id: <1560799790-20287-1-git-send-email-lollivier@baylibre.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_122957_082885_CD98EC8B 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 Loys Ollivier <lollivier@baylibre.com>, linux-kernel@vger.kernel.org,
 Kevin Hilman <khilman@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hello,

Following is a patch series that adds a SOC_SIFIVE config.
The purpose of this config is to group all the code specific to the SiFive
architecture such as device tree and platform drivers.

The initial thought/discussion came from [0].

[0] https://lore.kernel.org/linux-riscv/20190602080500.31700-1-paul.walmsley@sifive.com/

Loys Ollivier (3):
  arch: riscv: add config option for building SiFive's SoC resource
  riscv: select SiFive platform drivers with SOC_SIFIVE
  riscv: defconfig: enable SOC_SIFIVE

 arch/riscv/Kconfig                  |  2 ++
 arch/riscv/Kconfig.socs             | 13 +++++++++++++
 arch/riscv/boot/dts/sifive/Makefile |  2 +-
 arch/riscv/configs/defconfig        |  6 +-----
 4 files changed, 17 insertions(+), 6 deletions(-)
 create mode 100644 arch/riscv/Kconfig.socs

-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
