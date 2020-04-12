Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B37201A5BD8
	for <lists+linux-riscv@lfdr.de>; Sun, 12 Apr 2020 03:42:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ypjMRr4BDxH3QCgYXqxdYmDazqtkcKZ0EnHifbKcm6k=; b=SGATi81SGS4pNU
	Hszbp6MDl300xHl9lfoe9mLaaMPYcGS/hF1Jrs1CatDS3QrnCh2UPUjuvn8h8GImTNaAYfa0ce7j/
	NYkw+KWSbbkChQcuyZSGg1Ed9gmamJt1faWt2/yM8bZX5fb5rLJsKrqYw2p/ENnm4p9EdqjNebllG
	64X9od/g0+uiqiO863EBtV0ET+ZdbIGPsMwHCKAFFAHUFhImG0uo8fkUZJPxCDIV0o/ag1FIGullc
	8xSrWThXR4zrWJARopk18WhWntzKQ8nAlRDzV0oiALOneSL8o3wy2T09RyqxMC2YeH8X1YGx26fm+
	/munzoixQpDzlHMpYkpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNRe5-00047h-08; Sun, 12 Apr 2020 01:42:49 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNRdx-00043I-4f
 for linux-riscv@lists.infradead.org; Sun, 12 Apr 2020 01:42:42 +0000
Received: by mail-pl1-x643.google.com with SMTP id a23so2123509plm.1
 for <linux-riscv@lists.infradead.org>; Sat, 11 Apr 2020 18:42:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ypjMRr4BDxH3QCgYXqxdYmDazqtkcKZ0EnHifbKcm6k=;
 b=NSTtDPtHL2yE7MBmqCEKz1KgTE6FsUHhS+I2JyFB1WAWMq2LpvuwhTA4uhrTbonI8o
 wB7IRMv2jfy0W99vek5DHbouEpXojaA4NZMAO/jv6ZcaaPoWxStylHQXjRntHYvT19pv
 MDP5kdc5IK0SohURtUF6T8qfXHQz46ux+AeRuU3iKoPxgpab8Ro0oa9/U+ZxwBpukD+u
 gNiieLPOWKgw1R+kxbRI6/ON5oFK848cnaRmusSJkpqW/fjeojm5kfvB9gQZ05Xo5sU7
 7QHqBtuuP6pBO9S5eRj2Q/16ATTv5SDEByX5yU5rltRIltxRok32qgMU2kSu9QtOA4Xm
 lz6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ypjMRr4BDxH3QCgYXqxdYmDazqtkcKZ0EnHifbKcm6k=;
 b=Ah6u2FGf0FFBHi3CKmSvtEFo0NFT72RdTKJczO6uZhl1Nzjxk8hMSfalUCaOEUZIuM
 Dt9xLfcP9bG9H8bmizUkpFj3HoTX9SBz8fd1KgxnQ7P8ZRkT37PWp246zDZ80mskCS8P
 jz6Zs6M1J5l0dniD46tOUCz3Gkke0l5WaDgLRIi+61oGh5jYVjvV5Li8zEZTwLAAp6ao
 ZZn04rxppQCup2jAdkOlmDPrWg82qdXEbkvYjTKZcMMt7uiCz11A7/WUJQRVXyeSiArX
 3JBsFPuCeMEYuc0dTrBwGfwwpTB6g5kXpB4gZ/rF7uCgPj1bLUILJZ1nV1uLZnFQKGIR
 RLdw==
X-Gm-Message-State: AGi0PubjzuNQN+v5qNLzsETEIBqmqV8CdtRAfcF9AVr3NeDEzuwr+/Ws
 rE10ghztklh09bR3Ur/R5K44tQ==
X-Google-Smtp-Source: APiQypK87IXmkPbhYAQP+mchO0WTYuSmptfJVanD/j7ChuO8UmHRMZGJ28WVj+OCPYKD1vmxx9D0Nw==
X-Received: by 2002:a17:90a:e548:: with SMTP id
 ei8mr14157255pjb.144.1586655760302; 
 Sat, 11 Apr 2020 18:42:40 -0700 (PDT)
Received: from localhost.localdomain (123-195-35-41.dynamic.kbronet.com.tw.
 [123.195.35.41])
 by smtp.gmail.com with ESMTPSA id w90sm5252900pjj.2.2020.04.11.18.42.38
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 11 Apr 2020 18:42:39 -0700 (PDT)
From: Vincent Chen <vincent.chen@sifive.com>
To: daniel.thompson@linaro.org, paul.walmsley@sifive.com, palmer@dabbelt.com
Subject: [PATCH v3 3/5] kgdb: enable arch to support XML packet support.
Date: Sun, 12 Apr 2020 09:41:59 +0800
Message-Id: <1586655721-22567-4-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586655721-22567-1-git-send-email-vincent.chen@sifive.com>
References: <1586655721-22567-1-git-send-email-vincent.chen@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_184241_201926_98C7D4A3 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kgdb-bugreport@lists.sourceforge.net, linux-riscv@lists.infradead.org,
 Vincent Chen <vincent.chen@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The XML packet could be supported by required architecture if the
architecture defines CONFIG_ACRH_SUPPORTS_GDB_XML and implement its own
arch_handle_qxfer_pkt(). Except for the arch_handle_qxfer_pkt(), the
architecture also needs to record the feature supported by gdb stub into
the arch_gdb_stub_feature, and these features will be reported to host gdb
when gdb stub receives the qSupported packet.

Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
---
 include/linux/kgdb.h   | 11 +++++++++++
 kernel/debug/gdbstub.c | 13 +++++++++++++
 lib/Kconfig.kgdb       |  5 +++++
 3 files changed, 29 insertions(+)

diff --git a/include/linux/kgdb.h b/include/linux/kgdb.h
index b072aeb1fd78..414bef20a8f3 100644
--- a/include/linux/kgdb.h
+++ b/include/linux/kgdb.h
@@ -177,6 +177,17 @@ kgdb_arch_handle_exception(int vector, int signo, int err_code,
 			   struct pt_regs *regs);
 
 /**
+ *	kgdb_arch_handle_qxfer_pkt - Handle architecture specific GDB XML
+ *				     packets.
+ *	@remcom_in_buffer: The buffer of the packet we have read.
+ *	@remcom_out_buffer: The buffer of %BUFMAX bytes to write a packet into.
+ */
+
+extern void
+kgdb_arch_handle_qxfer_pkt(char *remcom_in_buffer,
+			   char *remcom_out_buffer);
+
+/**
  *	kgdb_call_nmi_hook - Call kgdb_nmicallback() on the current CPU
  *	@ignored: This parameter is only here to match the prototype.
  *
diff --git a/kernel/debug/gdbstub.c b/kernel/debug/gdbstub.c
index 4b280fc7dd67..a0617c883029 100644
--- a/kernel/debug/gdbstub.c
+++ b/kernel/debug/gdbstub.c
@@ -792,6 +792,19 @@ static void gdb_cmd_query(struct kgdb_state *ks)
 		}
 		break;
 #endif
+#ifdef CONFIG_HAVE_ARCH_KGDB_QXFER_PKT
+	case 'S':
+		if (!strncmp(remcom_in_buffer, "qSupported:", 11))
+			strcpy(remcom_out_buffer, kgdb_arch_gdb_stub_feature);
+		break;
+	case 'X':
+		if (!strncmp(remcom_in_buffer, "qXfer:", 6))
+			kgdb_arch_handle_qxfer_pkt(remcom_in_buffer,
+						   remcom_out_buffer);
+		break;
+#endif
+	default:
+		break;
 	}
 }
 
diff --git a/lib/Kconfig.kgdb b/lib/Kconfig.kgdb
index 933680b59e2d..d7f70335efaf 100644
--- a/lib/Kconfig.kgdb
+++ b/lib/Kconfig.kgdb
@@ -3,6 +3,11 @@
 config HAVE_ARCH_KGDB
 	bool
 
+# set if architecture has the its kgdb_arch_handle_qxfer_pkt
+# function to enable gdb stub to address XML packet sent from GDB.
+config HAVE_ARCH_KGDB_QXFER_PKT
+	bool
+
 menuconfig KGDB
 	bool "KGDB: kernel debugger"
 	depends on HAVE_ARCH_KGDB
-- 
2.7.4


