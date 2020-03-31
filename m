Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E79F199A69
	for <lists+linux-riscv@lfdr.de>; Tue, 31 Mar 2020 17:54:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zqSnOP8ANUuvs66kR1I4ddHiFAM4cZaEpCbx3krDXPE=; b=rRQUpecEOa32xC
	XdXF8qHKpjwAClCOe8FHPzo1PrYM51F/8ob92qXYs/ZvxPC9fAdYav/OtXALbrnofG0w2pasQeaob
	c6asW3ASF/B2rGpZ8H4CuASbIFJSmCd4AwYoWY2TRtFe3n27tofc48bQzZp1ZhdMNHX+ZjtOhPHvR
	KyvpG90j7DNml8B6wjKwPYMBTCdLSQZ739mq8ROZSbxV1d8gOadCJZeAihiCeYleRtL6mcIM9wkQM
	nD76d67mZbEcC9BmkMBixEUThr4Q+phtrq/v+g9+rC14v7qtH0oOJKEXmOv3Se9PVoKeFDAyU5Gxy
	E4ur0eHepAdn0NNTBS1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJDi-0004rZ-1n; Tue, 31 Mar 2020 15:54:30 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJBF-0002p6-5X
 for linux-riscv@lists.infradead.org; Tue, 31 Mar 2020 15:52:02 +0000
Received: by mail-oi1-x241.google.com with SMTP id w2so19362353oic.5
 for <linux-riscv@lists.infradead.org>; Tue, 31 Mar 2020 08:51:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=zqSnOP8ANUuvs66kR1I4ddHiFAM4cZaEpCbx3krDXPE=;
 b=h0BZdIc4bKQoTvQrDqvYL2Yk2htxSKIWIAaaQ1PHNfDrK0rHIZv2c1ss4c3rWGIWxf
 z7bz2fDdrC7AbF2Dl/yUnYh8yyVEKdNPGfdQR1bCCib1LAt66/zkXbFGzOhG0tdiTCeJ
 OMn7U6ld3iSgfSGS/rAtqwlKgZL7fPoFPdb1a4F4e5DjxIdGSwzMCYRSEhjnzdx+lFU9
 a2BGKuvNcbd+t1xTCQlTFJe8FZG6Q9/vDllEUDvEalILw/lSv6nbsjaN+rXtqqfuTuUh
 I6QpZ+E5iXxrG/xxgZnb71C08YBHSgF82SMlEWILd05T0Ge1aRPq4X5bJoqIsmOxiBw9
 cVfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=zqSnOP8ANUuvs66kR1I4ddHiFAM4cZaEpCbx3krDXPE=;
 b=QgffC7zAFID/ZUxStp8aVS/snxZRQJzXBv1T+0I97SNyfHahGqY1JeWobpUVyYf1XK
 CCGMeFOV2bHL+8PSjxSzmi2OPgtRhF65/NqIn8ePFlQIVDFKi/HLXtfLkkpX4LkYzM1W
 Q7rUdK9WhZ2Acs3IbixkrcEJkUdSPAlWZopt9aeLf1JlY563ps4WxPl+uRSCkM5/hnCP
 wuX5dwci1qnYn6aAYW/0y+uvAP+PZkFC7wE7YHlnqX5PJeCZHkOsNLNFe5qHV6BfTAb/
 iA4kSFERDNYN36SnuIuE0EWOXoXUYIUVhme3/8pSJsnouPQGrUZHgBt+jqBieSPj3GoH
 aGzA==
X-Gm-Message-State: ANhLgQ1DBeqIviLBI1nq3fTF/CSd5yMOQEC1DnRMTavbmd5r9ctL7nUS
 LVGZ5gic7Bt6WhnjOAFQwXvFJpIM/BE=
X-Google-Smtp-Source: APiQypJqXSCElKKtV5ZE3NYi3a88oTI00ID7TAIua/9Q+5t7PluAbQQ//W1JlyI5Ke8eCNKHs+W7kA==
X-Received: by 2002:a17:90b:3747:: with SMTP id
 ne7mr4528233pjb.181.1585668219762; 
 Tue, 31 Mar 2020 08:23:39 -0700 (PDT)
Received: from localhost.localdomain (123-195-35-41.dynamic.kbronet.com.tw.
 [123.195.35.41])
 by smtp.gmail.com with ESMTPSA id g30sm12097660pgn.40.2020.03.31.08.23.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 31 Mar 2020 08:23:39 -0700 (PDT)
From: Vincent Chen <vincent.chen@sifive.com>
To: jason.wessel@windriver.com, daniel.thompson@linaro.org,
 dianders@chromium.org, paul.walmsley@sifive.com, palmer@dabbelt.com
Subject: [PATCH v2 3/5] kgdb: enable arch to support XML packet support.
Date: Tue, 31 Mar 2020 23:23:09 +0800
Message-Id: <1585668191-16287-4-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585668191-16287-1-git-send-email-vincent.chen@sifive.com>
References: <1585668191-16287-1-git-send-email-vincent.chen@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_085157_703176_10171D36 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
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
 include/linux/kgdb.h   |  9 +++++++++
 kernel/debug/gdbstub.c | 13 +++++++++++++
 lib/Kconfig.kgdb       |  5 +++++
 3 files changed, 27 insertions(+)

diff --git a/include/linux/kgdb.h b/include/linux/kgdb.h
index b072aeb1fd78..ee9109d2f056 100644
--- a/include/linux/kgdb.h
+++ b/include/linux/kgdb.h
@@ -177,6 +177,15 @@ kgdb_arch_handle_exception(int vector, int signo, int err_code,
 			   struct pt_regs *regs);
 
 /**
+ *	arch_handle_qxfer_pkt - Handle architecture specific GDB XML packets.
+ *	@remcom_in_buffer: The buffer of the packet we have read.
+ *	@remcom_out_buffer: The buffer of %BUFMAX bytes to write a packet into.
+ */
+
+extern void
+arch_handle_qxfer_pkt(char *remcom_in_buffer, char *remcom_out_buffer);
+
+/**
  *	kgdb_call_nmi_hook - Call kgdb_nmicallback() on the current CPU
  *	@ignored: This parameter is only here to match the prototype.
  *
diff --git a/kernel/debug/gdbstub.c b/kernel/debug/gdbstub.c
index 4b280fc7dd67..d6b1b630a7e7 100644
--- a/kernel/debug/gdbstub.c
+++ b/kernel/debug/gdbstub.c
@@ -792,6 +792,19 @@ static void gdb_cmd_query(struct kgdb_state *ks)
 		}
 		break;
 #endif
+#ifdef CONFIG_ACRH_SUPPORTS_GDB_XML
+	case 'S':
+		if (!strncmp(remcom_in_buffer, "qSupported:", 11))
+			strcpy(remcom_out_buffer, arch_gdb_stub_feature);
+		break;
+	case 'X':
+		if (!strncmp(remcom_in_buffer, "qXfer:", 6))
+			arch_handle_qxfer_pkt(remcom_in_buffer,
+					      remcom_out_buffer);
+		break;
+#endif
+	default:
+		break;
 	}
 }
 
diff --git a/lib/Kconfig.kgdb b/lib/Kconfig.kgdb
index 933680b59e2d..5b586a3bba90 100644
--- a/lib/Kconfig.kgdb
+++ b/lib/Kconfig.kgdb
@@ -3,6 +3,11 @@
 config HAVE_ARCH_KGDB
 	bool
 
+# set if architecture implemented the arch_handle_qxfer_pkt function
+# to enable gdb stub to address XML packet sent from GDB.
+config ARCH_SUPPORTS_GDB_XML
+	bool
+
 menuconfig KGDB
 	bool "KGDB: kernel debugger"
 	depends on HAVE_ARCH_KGDB
-- 
2.7.4


