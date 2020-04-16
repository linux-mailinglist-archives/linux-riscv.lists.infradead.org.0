Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE131AB5F1
	for <lists+linux-riscv@lfdr.de>; Thu, 16 Apr 2020 04:38:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kQL12V+rk/n12wWdEuAjZpuKmbELr6f2w7wpHP6B90g=; b=NZrEuay/dutS4P
	J5yI0GjKbxUXvljWvkewyIQvy3fZWor2Y6ZtAgEqnqFxDNa4Pc012flSQ/3V44ggVCHJAJMtABb2m
	35vpjImHj62OBy4PFVuCob1posBl5pY7xsIGXd4W2bTR15FY4UJdT5iOyHZd1a/slebcKQTPzGSLY
	aZjj0qHQfl8qoEIIv1DP9WMqS2yKF/xzpWRraKK5ZALmyhIB5nBY82R7U+B+38V4rnjTbvybDLMzx
	mawCdLAPnDHmyoxs4TNn/dUlaSWdUoCIu2yOot74MFKZqymeh/nXpsb+ScbKk6VGuj3p+kCXugdDG
	bpFTNHBTDxXpT2IBShqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOuQO-0008U1-Kb; Thu, 16 Apr 2020 02:38:44 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOuQG-0008Pf-Tz
 for linux-riscv@lists.infradead.org; Thu, 16 Apr 2020 02:38:38 +0000
Received: by mail-pl1-x642.google.com with SMTP id k18so810339pll.6
 for <linux-riscv@lists.infradead.org>; Wed, 15 Apr 2020 19:38:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=kQL12V+rk/n12wWdEuAjZpuKmbELr6f2w7wpHP6B90g=;
 b=KxdHPl5Xj57YzwLm2KIzI2++Bgg11gD8rvULipq+6WxJ0rba5dKua7q+SGK1Culr9d
 0dezfk0D3Ez0Sus5m3xcAxufUo61lm0MNHjpqqEH6apagtoNB39EcOugkTLnayUAhgcj
 j5CWb3imUe77HZTI5pnn4GrP5IQl5SFcIKYW3EAlERejJzqOBLdN4RxbE7ezll/HS3HS
 DGGrU/MJ7Mg2lwdwfowCZw32g4k3jgYCB3VR1kALdOGqhpOmZhaZf049Gx384x8xqs/2
 obwQzUIA7wVDQfeLUloywR3GVbX5jzwsTFJ50jLzrx/TP67clYj8RFxlHanORwR/gJvK
 OLwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=kQL12V+rk/n12wWdEuAjZpuKmbELr6f2w7wpHP6B90g=;
 b=Mn9fEuOLLrZuppKZ4htihfmq1m7/qCnCi475de/PtajlOPCsOR6a6/cRC+8QESzTlN
 6JLciAPHXvblonrxRuJAoqISO4+ctawAIz5i1YK8t6PpPPcere1rCJ0Br1rK5VSWQWZr
 btTe3Qd6OglCdxdsBVV2LtTnxQceoMMXkJbZ4nQi23Kcolt28wqCrlsvj0x3LUbf0a05
 Y3Z8URCJEbMHhbZyn+LfMTnnEy9IgxjOjK1MGIB2mZbtpdplxkOnJiTdoSZIYisjcZ4I
 O4ifvu/0Hf09Myvr+Le7T6qsaP1iv8i1Q88waEDnvzsR3ipYd7kthehloybVs/7k3L2w
 0Z+g==
X-Gm-Message-State: AGi0PuYCsyzRXbaWOgktCyqGGPsoTben8SYLx0vwFFpkmGshZofuF/n1
 FyOQug8rF5CQimh+me8rJtezKA==
X-Google-Smtp-Source: APiQypJlXo9zQXDx/nvUUytOemoi96Kf2ZZ2BE2KWbptvcDTYFsOijI/7XG/Zc9QTohZ0W6z26C81w==
X-Received: by 2002:a17:90a:2ac7:: with SMTP id
 i7mr2461174pjg.130.1587004715561; 
 Wed, 15 Apr 2020 19:38:35 -0700 (PDT)
Received: from VincentChen-ThinkPad-T480s.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id i25sm11347536pfd.140.2020.04.15.19.38.34
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 Apr 2020 19:38:35 -0700 (PDT)
From: Vincent Chen <vincent.chen@sifive.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com, daniel.thompson@linaro.org
Subject: [PATCH v4 3/5] kgdb: enable arch to support XML packet support.
Date: Thu, 16 Apr 2020 10:38:06 +0800
Message-Id: <1587004688-19788-4-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587004688-19788-1-git-send-email-vincent.chen@sifive.com>
References: <1587004688-19788-1-git-send-email-vincent.chen@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_193836_962086_76E1D29C 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kgdb-bugreport@lists.sourceforge.net, linux-riscv@lists.infradead.org,
 Vincent Chen <vincent.chen@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The XML packet could be supported by required architecture if the
architecture defines CONFIG_HAVE_ARCH_KGDB_QXFER_PKT and implement its own
kgdb_arch_handle_qxfer_pkt(). Except for the kgdb_arch_handle_qxfer_pkt(),
the architecture also needs to record the feature supported by gdb stub
into the kgdb_arch_gdb_stub_feature, and these features will be reported
to host gdb when gdb stub receives the qSupported packet.

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


