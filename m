Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52EFD4E68B
	for <lists+linux-riscv@lfdr.de>; Fri, 21 Jun 2019 12:57:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=DqMsocTv7zDTU7tG7x3iWw1VjyurLSVqWpFALGBt9mE=; b=FAe
	M4NFrN4SMv3zftnSJIniFsMg5PrPsQF6UufldARPbyciGUZbtsQ7xgQ4gMCUQyXuf2BqvHrRAxWeV
	LIhA6Hw16ESVLPk1hSnLpyXcwlRNAvuZSksmadoSeal4ug+mXJB12m+QJwUQPcEiusCDC13qdk9k4
	iEekD8+iYe2TgYOgDHevVhs5vIaX/w5V+LRJXtilrYx9N3O0CqrwX8VOy7QYY3yAc1q2hakcG2RMc
	Qf2ijPVm8O+1nzofKnVyHVyWg8fdczu7fF6CbX9LQ+wb43zqFRnHkqC1tj37Oih41L3AuQCGKZiYy
	J/Np4DvSXT3cjZPzFLUFJ3VgzfneCXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heHEe-0001CT-5P; Fri, 21 Jun 2019 10:57:36 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heHEa-0001Bs-AQ
 for linux-riscv@lists.infradead.org; Fri, 21 Jun 2019 10:57:33 +0000
Received: by mail-pg1-x543.google.com with SMTP id f25so3189607pgv.10
 for <linux-riscv@lists.infradead.org>; Fri, 21 Jun 2019 03:57:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=m4SystdEUYyTsZI3hnmFt3ur3sFjiDU6l/WcXNGnPvU=;
 b=Spoip36rQtmU/CyiMWVfJkYQIPink69AqYVxGtT0MpDnfdIT8FRP/FE3WbuZtH5Udb
 1zQ5J4mGDp2M57h6LgFxrEwKsi5/LPSA+xfL19vy/+41LBqTRapVUYPTVqEibPZwyN6t
 xGC0HNetqBxwnbd7RVVshUR/qKe85V/san+6PTJT6etBRJhBdK64vEVvBUd2CaOA7EJV
 kfSAnaKfW3RjlHQ2PbyyCGa/nW3NLdWUCU9APcgtpzH5+MwdjIAphhPYGrKy1y9onmIP
 Q4/C+TtHoKZxaIdW4Vgy5uoMErHjx+atNADwwvOjae2ibnebibV/f9Bs1b/Fsnfe0tXN
 hDJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=m4SystdEUYyTsZI3hnmFt3ur3sFjiDU6l/WcXNGnPvU=;
 b=emQ1xdKnFjr9uy0VOznljkq1WswW8RyPoRqmLqZ4BdNSq7eu/Hsf0auKI5BAaw+pzZ
 jiOv4gNBYemppvupkxD/ZCcpRvpgaqR/6XJ1AA9hpKiE6Im5z0Si6+OfV1y5D/TglG/n
 nnEgqCivsI2GwgaHCs3fiLiGevjkaekk30OGK0H9G3DoV+mDHshnb4DvgIESMfQlFvGj
 /d2XwCjPbQWBidx1HIaaZ8Y1PzZ8KQ1/FWOzJfj67VxGLgSBdVx0gFmC3h5TYzL2Pybl
 itJVe6QNCHJhJoifw5WS5io1JAK7GGLXKbgQqz0StebdVfv/u0nrnwwX0ZZmcCOmTFDx
 T7dw==
X-Gm-Message-State: APjAAAUsYz0Sbt29sSIgzx0girGr9gUTtFpEcQEmH29jiwhuLHm+8KgM
 QFDIwx9j7bThFuQ+5UNqC80PoQ==
X-Google-Smtp-Source: APXvYqwzjjm4483alu65arc4JSsx+I/alCHC31k15aRzcosRcQA2NcisAKHpGycWDhXMyiza4ypiEg==
X-Received: by 2002:a63:c20e:: with SMTP id b14mr17159994pgd.96.1561114650984; 
 Fri, 21 Jun 2019 03:57:30 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id q63sm3889442pfb.81.2019.06.21.03.57.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 21 Jun 2019 03:57:30 -0700 (PDT)
From: Yash Shah <yash.shah@sifive.com>
To: robh+dt@kernel.org, paul.walmsley@sifive.com, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] DT node for SiFive FU540 Ethernet Controller driver
Date: Fri, 21 Jun 2019 16:23:48 +0530
Message-Id: <1561114429-29612-1-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_035732_392872_D6EF0CB1 
X-CRM114-Status: UNSURE (   6.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, sachin.ghadi@sifive.com,
 Yash Shah <yash.shah@sifive.com>, palmer@sifive.com, aou@eecs.berkeley.edu
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch-set is based on 'riscv-for-v5.2/fixes-rc6' tag of
git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git

Tested on HiFive Unleashed board with additional patches required for
testing can be found at dev/yashs/ethernet_dt_v2 branch of:
https://github.com/yashshah7/riscv-linux.git

Change history:
v2:
- Set "status = disabled" in DTSI file and enable it in Board DTS file
- Move PHY related nodes into board DTS file

Yash Shah (1):
  riscv: dts: Add DT node for SiFive FU540 Ethernet controller driver

 arch/riscv/boot/dts/sifive/fu540-c000.dtsi          | 16 ++++++++++++++++
 arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts |  9 +++++++++
 2 files changed, 25 insertions(+)

-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
