Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB24A1665D
	for <lists+linux-riscv@lfdr.de>; Tue,  7 May 2019 17:15:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=L39M1xx/9BJspJbN5SOJZfScWSUrVKF3R4TWtP8i83I=; b=Cpc
	TymRW5b3zRuiSe+hAUjrBuryVv8k4MKPeFRtG+j9Zn/tq1xhO9iUyLZzKY9WtJZfMD+ElzweFARlW
	q+nS7ROVZIdwTtl638TU41PUvKxZBOaLBkDjOSyqMLBI7axo8Ex3AJtxa2CbmZG8VV/fXC0rDfv7s
	qjYtI2GDJYmNXPJuiMXHLQ1BrgvHrJKi1Uyj3o/54Bmq77/K0kxP0zHHTXBww3JyD9fiqkMzzSnTT
	JOGqbDo0i6sYglDVULSiJZphxRrCVdJAPAQ8ByKddtj72MbfRNISjBb1zr9w+G7H//upwDyokt/DU
	t60Y34qhzqb+YXeYjBjJZd4fDIM79Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO1of-00021I-E2; Tue, 07 May 2019 15:15:37 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO1oZ-00020e-9s
 for linux-riscv@lists.infradead.org; Tue, 07 May 2019 15:15:35 +0000
Received: by mail-pf1-x444.google.com with SMTP id v80so8826995pfa.3
 for <linux-riscv@lists.infradead.org>; Tue, 07 May 2019 08:15:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:from:to:subject:date:message-id;
 bh=jxvbr3KCxGuFA0UUCE0tn2m+gj1lVeJv2p0ZckpwEOo=;
 b=godi/eRqc9u1IGuhM6qD/GD01ckleD8wICQ7/wytewi8a7HBbzkII3459Dcb5M+5sy
 SFVxVOPrh7oEqVmF4uK8oXWesB2bHmyIkIDNTNkIiFE6aVDQAuMrT+Lhyc7dZjrVGUz3
 OYxlsQzH8MWBzSPmXLdIQNiSbw2MXf7hEu7OfDrD/NCs0oNCRXmxFjIiJhNeiDiPuNi3
 WPOv5roEbMkZgK8sd3IbMVL6LZW1FMNM5rqNKdKe625cMdK66Qm1aU5VhWd0NQHg5Ra3
 0XZSzk+0CYdxAWjOaclyJKyw53FQhY5XIYz5khKa4DFmlAxxdg66yLH1zv2d6LR1LfWo
 kvgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=mime-version:x-gm-message-state:from:to:subject:date:message-id;
 bh=jxvbr3KCxGuFA0UUCE0tn2m+gj1lVeJv2p0ZckpwEOo=;
 b=LQNrWckDLMd6RjGCm5lTVrdqrY1ImT/9Rl1F4xJRhOnYOYfX881UqTx6xZTy0mChvF
 M0y1/eQ9e4kGyzteLt17Zpc7XI9TDQ/HDd3fGTVOdQE2od94gG80eQpu9JuOoelBmZ7w
 Z+5hUoQX0MKb4fMp9jkWaHLabmOZ8TCv8reuZQTJpknyzn2COHWLU5+phGTIp+CaNo63
 YeTYE+mkpyvOfCptXnxkR3bSHJ/9r+giFXY4I4uTUtw1+QqHcdVfdz8zMg4OgdvHgRXW
 bzLXHihZOqjxpWI5F7VHe6GouBYY27pRnzzils0dJiCzk1KaclGVCQbWcDm06J6O4YJ7
 szsw==
MIME-Version: 1.0
X-Gm-Message-State: APjAAAVm+oNGSIqnJoC7xAUJKf3IsewojKU4NbY9UEGU2pHvji3z75B0
 bhmZFdn+elgMbknDMaZzJ3xcG2j59aWoecE4p3x/b9oLh0Dvm4d3SruEBKfbb/oANm0N1mHtT05
 e1NcERUBfn0ylg2pUIQglWg==
X-Google-Smtp-Source: APXvYqzrXRe5boGKu4+E5H+iFQtt2WKa8IE844ytrYjmvDo2sjKQXZGEQiX+PPyG3XVys162mtMbAQ==
X-Received: by 2002:a65:4649:: with SMTP id k9mr16750621pgr.239.1557242128887; 
 Tue, 07 May 2019 08:15:28 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id 2sm5397398pgc.49.2019.05.07.08.15.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 07 May 2019 08:15:28 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, peter@korsgaard.com,
 andrew@lunn.ch, palmer@sifive.com, paul.walmsley@sifive.com,
 sagar.kadam@sifive.com, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 v2 0/3] Extend dt bindings to support I2C on sifive devices
 and a fix broken IRQ in polling mode.
Date: Tue,  7 May 2019 20:45:05 +0530
Message-Id: <1557242108-13580-1-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_081533_801109_B9FD66EF 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The patch is based on mainline v5.1 and extends DT-bindings for Opencore based I2C device in FU540 
SoC, available on HiFive unleashed board (Rev A00), and also provides a workaround for broken IRQ
which affect I2C polling mode interface on FU540 chipsets. 

The polling mode workaround patch fixes the CPU stall issue, when-ever i2c transfer are initiated.

This workaround checks if it's a FU540 chipset based on device tree information, and check's for open
core's IF(interrupt flag) and TIP flags to break from the polling loop upon completion of transfer.

To test the patch, a PMOD-AD2 sensor is connected to HiFive Unleashed board over J1 connector, and 
appropriate device node is added into board specific device tree as per the information provided in 
dt-bindings in Documentation/devicetree/bindings/i2c/i2c-sifive.txt.
Without this workaround, the CPU stall's infinitely.

Busybox i2c utilities used to verify workaround : i2cdetect, i2cdump, i2cset, i2cget


Patch History:

V0<->V1:
-Incorporate review comments from Andrew
-Extend dt bindings into i2c-ocores.txt instead of adding new file
-Rename SIFIVE_FLAG_POLL to OCORES_FLAG_BROKEN_IRQ

V0:
-Update dt bindings for sifive i2c devices
-Fix broken IRQ affecting i2c polling mode interface.


Sagar Shrikant Kadam (3):
  dt-bindings: i2c: extend existing opencore bindings.
  i2c-ocore: sifive: add support for i2c device on FU540-c000 SoC.
  i2c-ocores: sifive: add polling mode workaround for FU540-C000 SoC.

 .../devicetree/bindings/i2c/i2c-ocores.txt         | 20 +++++++++++++
 drivers/i2c/busses/i2c-ocores.c                    | 33 +++++++++++++++++++---
 2 files changed, 49 insertions(+), 4 deletions(-)

-- 
1.9.1


-- 
The information transmitted is intended only for the person or entity to 
which it is addressed and may contain confidential and/or privileged 
material. If you are not the intended recipient of this message please do 
not read, copy, use or disclose this communication and notify the sender 
immediately. It should be noted that any review, retransmission, 
dissemination or other use of, or taking action or reliance upon, this 
information by persons or entities other than the intended recipient is 
prohibited.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
