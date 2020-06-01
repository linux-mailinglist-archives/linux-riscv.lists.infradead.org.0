Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 055F31E9C16
	for <lists+linux-riscv@lfdr.de>; Mon,  1 Jun 2020 05:40:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b8VULp95Fx1AsmZEtKU1sx+4IqykdSqOWh3STBA2iqs=; b=A9SJPHE27m45cT
	2wHz6UjcWglZxLSfSTrQjNZsCLXGSKFJiDnj7S36c21nqnAJRi9dzMZ6nQc2XsGKf/Ag4VV9ELJaY
	NLXyw/ilbwM72yw41KL7vErMuM4WBlxH09+SPs7gMuqMiqlPenzmGLwXNU+j9Y3elpv+s+ZhZOFaE
	d9fUKojBvzVtEEX06CQIibAsCCUPDf8SDXV75zbi+iF3sTqbDxepFm1VAPz0+bH1Il9WLtR+2L+W6
	85TnaRKGj8RfaF7UVVCp5WIi+quyVw6hIzr+1UVjg2TLgmZkHmb5UDbWdEh3DRYcIClHAU9UsxK0a
	2UAkEMQfPzu8XcwfsLXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfbJF-0001HS-BM; Mon, 01 Jun 2020 03:40:21 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfbIx-0007AE-6u
 for linux-riscv@lists.infradead.org; Mon, 01 Jun 2020 03:40:04 +0000
Received: by mail-pl1-x631.google.com with SMTP id q16so3683983plr.2
 for <linux-riscv@lists.infradead.org>; Sun, 31 May 2020 20:40:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=b8VULp95Fx1AsmZEtKU1sx+4IqykdSqOWh3STBA2iqs=;
 b=GO8df4OSMR//XRwKmPeid/edkCEndtoRlyBhWBxLJrA9rT8/gAdJferjGDgBN9oqlR
 3dTITF/82VRRwavjgDYiK6J7U40Fbh8dNaozac2BvfEVCwS5R4p3KATwlgiO7yZ8Jbgp
 C6hqm8OA+kKX4rLXu4g4W3167XJicm4EVvr6eubeS/KhEelUWXDCEz/pc4l++PSizZ1s
 8EJwL6LbGJlDkcNVYe7Pm1lj65DDuk7W+TddOqrbkH9pD0LOP5MT+SstwV6YKVcjO3vR
 xrDNPstANci2ZcmWntWA42PxiE7AurgG9Aryoj0e3vDM37+IqC5s2A19JrakUwznJPeN
 Bh3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=b8VULp95Fx1AsmZEtKU1sx+4IqykdSqOWh3STBA2iqs=;
 b=JTnUxkFyPqxHyKgEawklezxmiQyULaKa0kqr1YjQ5G97sNXToN1ldQVOyJyXbJ2faN
 7EAnWHbaF9OQ5cLB+Zrqw+keOr6Xn/YBO0GlmvoZ1uFtOTNsbMJqhJZWh8/Bgo/hCkws
 bzbY5lqKb3bpvT2mGAUa+JfdngtQx0v7p54sqwPw42bNaqHOB21gu58AXwVlKfQVhRaN
 /t8AfqXxHzIoQfC+eVjKtw229NBlOnrZ1FcgUJDMX4mr66tEv5IOVyZNjdkZieshgwk0
 2/9Z8mG5vzNMMqW1vAUvf3NvV7mCcnb8fwt9zn6M7nF4nTGSC8xdcLbI9t8qiw0Y2qTz
 QqYw==
X-Gm-Message-State: AOAM533LkwGdc+BcSctUMP7zLzp2LtXHiTCaV9FkbxlUD9jgTqUJlGic
 ESShemXzQSYu2c/99p+YbmjWmA==
X-Google-Smtp-Source: ABdhPJwsOzHsQiO6n0P34IilKP/uuoxlMMtoYMThR2PlovFhdcekYToeHKS/3jXoR12+/UPNCWfJSw==
X-Received: by 2002:a17:902:8697:: with SMTP id
 g23mr16137219plo.306.1590982801077; 
 Sun, 31 May 2020 20:40:01 -0700 (PDT)
Received: from VincentChen-ThinkPad-T480s.internal.sifive.com
 (2001-b400-e3df-96c7-30f0-f751-b645-f4e3.emome-ip6.hinet.net.
 [2001:b400:e3df:96c7:30f0:f751:b645:f4e3])
 by smtp.gmail.com with ESMTPSA id a7sm13102527pfa.187.2020.05.31.20.39.59
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 31 May 2020 20:40:00 -0700 (PDT)
From: Vincent Chen <vincent.chen@sifive.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com, daniel.thompson@linaro.org
Subject: [V5 patch 3/6] kgdb: enable arch to support XML packet support.
Date: Mon,  1 Jun 2020 11:39:08 +0800
Message-Id: <1590982751-13401-4-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590982751-13401-1-git-send-email-vincent.chen@sifive.com>
References: <1590982751-13401-1-git-send-email-vincent.chen@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_204003_351898_577D810D 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:631 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Acked-by: Daniel Thompson <daniel.thompson@linaro.org>
---
 include/linux/kgdb.h   | 11 +++++++++++
 kernel/debug/gdbstub.c | 13 +++++++++++++
 lib/Kconfig.kgdb       |  5 +++++
 3 files changed, 29 insertions(+)

diff --git a/include/linux/kgdb.h b/include/linux/kgdb.h
index 03c64aa8ba36..0e7a12c59f26 100644
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


