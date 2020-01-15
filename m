Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F20013BE89
	for <lists+linux-riscv@lfdr.de>; Wed, 15 Jan 2020 12:33:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bjtZ5eSDKVKPCaPVF0QkrfK9h+NZ0t3IhMm/2SNFSYY=; b=Dy/OwQwm3Olwsnj3Ok34GRZqPi
	1s8LUgiW0k4DCdc0OdKDrpy8O4kUl02a8NrOYT9JmyWYFSeeSTg7yt3I36CycqT6LEI6hNnE+XP9c
	nOLotcMfOlQox6FGioSrY++WKUEzqBwDV5sU07g2UzXKVhxvS5q395h5OQWZNrwmvGKjhqE7ZzaGW
	YjWkNE2uKrQmteTJnwhR4LAuH6Cj9KhtyMVxK2gktZoxoF5qTY4HzbqL/JCnNyHkYqtQVc8TpFxSZ
	Aq6gbwtY4Jeci9Zuu3c2rEuF5fBfqp/FbVbvgybVyuCmb4J0rI1PYiBtSiqEoMDyiPKvu76miUuCO
	mrfkFcIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irgvS-00040S-10; Wed, 15 Jan 2020 11:33:30 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irgvJ-0003yv-UY
 for linux-riscv@lists.infradead.org; Wed, 15 Jan 2020 11:33:28 +0000
Received: by mail-wm1-x343.google.com with SMTP id p17so17457000wmb.0
 for <linux-riscv@lists.infradead.org>; Wed, 15 Jan 2020 03:33:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=bjtZ5eSDKVKPCaPVF0QkrfK9h+NZ0t3IhMm/2SNFSYY=;
 b=Ipkc0c9TvwHgCZpX171XDuHI2ImOVWFpZtsbC93JtqSRfDcXVUGgkbmufiP1m+wyYj
 7VGmqsyGr2dLptJC8qPssX4wuvXLiF9WlHY98MUbVf1JjJpPmVuKGAi5ISEqoN9Ln25W
 +y+y51ISOrXX8TfWGHCOTTlMAeoPMoxFQProTGu261lv+WkKU2PqWRxoZ4iNTO4jZMcl
 qXHSRnFTQt+NN+t1nPHSRuoMYNZmhI3CmSLdVQFXiVEsyLS0tKtldAa9l//ghx+5vdWU
 l5cLKPQaXociYaFR4s43AbDnzxq53CSYpPwZaaekRXUCA4P5nwGuBCwMfvz9j5qrDHe4
 qXxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=bjtZ5eSDKVKPCaPVF0QkrfK9h+NZ0t3IhMm/2SNFSYY=;
 b=T6w3blrLjG/RhG4duqbCM3148vs0htVfh/JgRp+7O/bRFSIJiBSvDEptHMrgMqhyQ/
 ujeRPWSO+2TjZ/3DOjV8SQBxJSPKzEKTMcOte8hTKHjAm+6oT5631XG790k/zGoSShNK
 ge8aN69MtrpIX5jPBvuU621ohObpNNRy9Vw6OiCyrcBykAalKDIY7PNUWbRa0xA/7rFM
 2cxN0nuWOc4FXUg+y85BkxSoxYi1W8Gk6jovirTmg4qceSaJR6cn3acmWoulJh6OFy3k
 a+1vfmlkaHJENwgYsyByY4N4Y7WiG6Ngvtbk5DrMs5emsECwAm+L82gOTdh4osNxBaG6
 a0bQ==
X-Gm-Message-State: APjAAAVGglAT5gNfd9glk+Ec7v+VLolEXIFSRsf9++QZCI8Qcph9ukdS
 ALnq1e3aWcljiVJbT/ms4SjoVbqbv8W0oA==
X-Google-Smtp-Source: APXvYqxam+VTA908+XGqxn+E6SO3/si0ritI029uDRCZAPoh0ozQqwfgoeJc7oTFItean/5norE7hA==
X-Received: by 2002:a1c:498a:: with SMTP id w132mr30992904wma.10.1579087999863; 
 Wed, 15 Jan 2020 03:33:19 -0800 (PST)
Received: from localhost.localdomain ([2a02:a58:8166:7500:34f4:3149:a617:3dd])
 by smtp.gmail.com with ESMTPSA id
 h17sm24892867wrs.18.2020.01.15.03.33.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 03:33:19 -0800 (PST)
From: Ilie Halip <ilie.halip@gmail.com>
To: linux-riscv@lists.infradead.org
Subject: [PATCH] riscv: delete temporary files
Date: Wed, 15 Jan 2020 13:32:42 +0200
Message-Id: <20200115113243.23096-1-ilie.halip@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_033322_644370_F44642D8 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ilie.halip[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Arnd Bergmann <arnd@arndb.de>,
 Ilie Halip <ilie.halip@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Mao Han <han_mao@c-sky.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Temporary files used in the VDSO build process linger on even after make
mrproper: vdso-dummy.o.tmp, vdso.so.dbg.tmp.

Delete them once they're no longer needed.

Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
---
 arch/riscv/kernel/vdso/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
index 49a5852fd07d..33b16f4212f7 100644
--- a/arch/riscv/kernel/vdso/Makefile
+++ b/arch/riscv/kernel/vdso/Makefile
@@ -58,7 +58,8 @@ quiet_cmd_vdsold = VDSOLD  $@
       cmd_vdsold = $(CC) $(KBUILD_CFLAGS) $(call cc-option, -no-pie) -nostdlib -nostartfiles $(SYSCFLAGS_$(@F)) \
                            -Wl,-T,$(filter-out FORCE,$^) -o $@.tmp && \
                    $(CROSS_COMPILE)objcopy \
-                           $(patsubst %, -G __vdso_%, $(vdso-syms)) $@.tmp $@
+                           $(patsubst %, -G __vdso_%, $(vdso-syms)) $@.tmp $@ && \
+                   rm $@.tmp
 
 # install commands for the unstripped file
 quiet_cmd_vdso_install = INSTALL $@

base-commit: dc6fcba72f0435b7884f2e92fd634bb9f78a2c60
-- 
2.17.1


