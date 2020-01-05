Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B58B1309D1
	for <lists+linux-riscv@lfdr.de>; Sun,  5 Jan 2020 21:10:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PRpD2n4zlwukx97QwqwwL5Nrpn0KRR9wzNPg2ILLwjo=; b=C7fYNcfRCu4cpCyLJdiL0tPWVH
	fJybikcjdAF89EgkOveiBl2FTthGPRUvL6GXDH4/SWVM4UTaM9ibLXQW5VJqBWiduI2ULhlY3Lfg6
	ThDPHJ2D4myq/t02LP1u7ZBVhTpLCGskY83Q5c+SBs0PSU8yhremQnNxpYh7SpuICq6VXWDh7BBEz
	43KYeYIqSho/fbtFjvJLFLnnpK5gxoLP/Yc0pHN8UoiKNrj0RIAAmXzEubX1uxLdmJ1CagacuUv8J
	0i2eHM3Ag3TTz+UxW6zlQoAwMmzQX3OhzhhL9uTtpU8baP3bZlg/7xSwRGqcsvJBmj+44+YectTtj
	UZiKt1kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioCEG-0003pH-U5; Sun, 05 Jan 2020 20:10:28 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioCED-0003og-55
 for linux-riscv@lists.infradead.org; Sun, 05 Jan 2020 20:10:26 +0000
Received: by mail-pf1-x444.google.com with SMTP id w62so25963167pfw.8
 for <linux-riscv@lists.infradead.org>; Sun, 05 Jan 2020 12:10:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=PRpD2n4zlwukx97QwqwwL5Nrpn0KRR9wzNPg2ILLwjo=;
 b=bljkmXfElHrTWVuiJgbvMqWlZ1RfzX4it52jygfqC75orInqRZE/hvh6fvU62MVutK
 U6FfSlQeAffglaxcZAbsu2kWUFY5t7wxzliND+GYlar9eADluk6/KGmbLfxG6D3Sj1Zv
 cQWFEMCsAurOb+EuELM7F2/vvDRz9GQjYbf0j6gFG7ti7eOyB8NsYcA+ctXWGEZdywRt
 YxglpXobS65FtDE0iyiRaATLqWNsS0esy3jt///Qw+iW9Lf2/Q4mpsqcwhBeJS8n0+Jd
 ktOxHQcijye/6jCckPKlIbuHTVC083OKbXcoIT5dvfBnVRB17T9b64XHaztP/+4VuhmG
 b6Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=PRpD2n4zlwukx97QwqwwL5Nrpn0KRR9wzNPg2ILLwjo=;
 b=gdk2DhaOnQsBxyKvga8AIOfMOYSJ3iq1gaq0bzGcsjEcRZlHJwmYiVwWsszjMpucuo
 Lw724OOiHh6oIJxVN/TR8MN5dcBWY6Qz25IBknhYBp97AA0d8WhPdMpYRSkUV053+CMN
 JvAb2gEqVmOen6fEZvxvHrvOEHdY4nuQLIqvmjsbvgOnajpBtkt28pN5dudJRGVL+vnP
 UAcSRFuGM+RVc8hEV77H5fLd+RQ8RS+NkmeCo1AYFt4LnOOPof0+FYuBDQikkKo71T/M
 9+pQAduaiUTs7gfOjReHYemKBUPk3R3qtucJy48WHCmw6Jnx6+Ati0l+AwaLZFyIr1AW
 kYKQ==
X-Gm-Message-State: APjAAAWQA7F8eh5NOigzJp2QTXPqptscEAobEfUB51Fk76nPChek74E9
 +MrrakYJBonzzjRKZTECAQk=
X-Google-Smtp-Source: APXvYqwrGVufAmyBiFk3tO+QS41C72PtEadvDDZBOGaSZMqbaN5UmG/IVLnbl0MmNhCbCrgJx2MpqQ==
X-Received: by 2002:a63:181:: with SMTP id 123mr105423175pgb.36.1578255024335; 
 Sun, 05 Jan 2020 12:10:24 -0800 (PST)
Received: from deepa-ubuntu.lan (c-98-234-52-230.hsd1.ca.comcast.net.
 [98.234.52.230])
 by smtp.gmail.com with ESMTPSA id z29sm74205106pge.21.2020.01.05.12.10.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Jan 2020 12:10:23 -0800 (PST)
From: Deepa Dinamani <deepa.kernel@gmail.com>
To: paul.walmsley@sifive.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH] riscv: Delete CONFIG_SYSFS_SYSCALL from defconfigs
Date: Sun,  5 Jan 2020 12:10:20 -0800
Message-Id: <20200105201020.13111-1-deepa.kernel@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_121025_195863_095D8116 
X-CRM114-Status: UNSURE (   8.22  )
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
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (deepa.kernel[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

According to init/Kconfig:
"sys_sysfs is an obsolete system call no longer supported in libc.
Note that disabling this option is more secure but might break
compatibility with some systems."

This syscall is not required for new architectures. Since the config
defaults to 'y'. Set this to 'n' exlicitly.

Signed-off-by: Deepa Dinamani <deepa.kernel@gmail.com>
---
 arch/riscv/configs/defconfig      | 1 +
 arch/riscv/configs/rv32_defconfig | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index e2ff95cb3390..58f97b3cb24c 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -125,3 +125,4 @@ CONFIG_DEBUG_BLOCK_EXT_DEVT=y
 # CONFIG_FTRACE is not set
 # CONFIG_RUNTIME_TESTING_MENU is not set
 CONFIG_MEMTEST=y
+# CONFIG_SYSFS_SYSCALL is not set
diff --git a/arch/riscv/configs/rv32_defconfig b/arch/riscv/configs/rv32_defconfig
index eb519407c841..f4076b6ac063 100644
--- a/arch/riscv/configs/rv32_defconfig
+++ b/arch/riscv/configs/rv32_defconfig
@@ -122,3 +122,4 @@ CONFIG_DEBUG_BLOCK_EXT_DEVT=y
 # CONFIG_FTRACE is not set
 # CONFIG_RUNTIME_TESTING_MENU is not set
 CONFIG_MEMTEST=y
+# CONFIG_SYSFS_SYSCALL is not set
-- 
2.17.1


