Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08695177180
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Mar 2020 09:47:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5f2ikCnnHJJs8RgHgk1kmK0wqdQGHiofgOLX/mam8vM=; b=NpLdaJ/OzP0hq3SMTW51eRzZDZ
	vUveU61gQZ+QWQJXboXodp1Ct2AgtFYqaOZxruVuWo/UhtDfllYqZUJCovame+oZQj6+05o6Gp+Sz
	JysmWW8T7QerJ/KOB8M3tBdej8TqC/FkM13qAzXqXCBForeF8n4IREaYgO3j+b55x+qF2RX52Vyif
	/r4Hay9u89WpvHvpfwv85lqf8rFG2CVrNeY4oJ4ykbleMJbLsOOS3wSp+gTQyQrQNwQ7CqKsOu3w6
	rjEJREh/LdCCfgwLhlGpb40xOHYS+nP7YlWXgudY9tG+MISpJGpKgdxgCCT/58URR6CYiN2wQoirc
	b1XCrLjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j93DU-0000PY-Ro; Tue, 03 Mar 2020 08:47:52 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j93DR-0000PC-76
 for linux-riscv@lists.infradead.org; Tue, 03 Mar 2020 08:47:50 +0000
Received: by mail-pf1-x441.google.com with SMTP id i19so1128560pfa.2
 for <linux-riscv@lists.infradead.org>; Tue, 03 Mar 2020 00:47:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=5f2ikCnnHJJs8RgHgk1kmK0wqdQGHiofgOLX/mam8vM=;
 b=B3BkhLJYazKwKoW9hmNFqT9XsWEOybf+G8am8aHdXpnOd78Txob0NZ40jjzX7hcvIZ
 AqeIr0k6ysCRVP2+XzaNovba4FiCHvvRMFmE/QMbAeGWwl3G52NzPXq355ZSBYCXX8l6
 wqzdDJ50U8YVshXVkqoLiDj4uAWS3dxb/y7l0Efn+3pHlLV4JmilNoqI0LAOqMsgTWhm
 pog3ZoXshrxPnz79euSyncO2apbt/idJfss2G3voGr4iETl/6o/BCoCveMRiJezuvtn5
 GhvYgvqVXSbi5494CLPOwGGPTUBtDtWPQPChXnd6STKgTlijNqakRDjOdGnDx1up5eDW
 TBOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=5f2ikCnnHJJs8RgHgk1kmK0wqdQGHiofgOLX/mam8vM=;
 b=GFSLiI07o86/+PuvUaYEmDduQMZ7dQzM0U9mrdau6ZEfMWXkcGu1qPxj0gpNTuLk1e
 cxD7ok04A0EkbTnEY+jEGmqB1iKw/s+47Xr2hORCPtdhBkbiCuZ61H7GAdzYIAPUl9+8
 8SBxw2bW7AXbuW7HBtKTxZVMDx/p92JUkmP1eUoU14cACiW760ARa7chisWSHPXs5Pim
 AxVZ5nTgma2yEq9doNQUpbp2LUxail0kU9LXlPmoH5uxTPHdLIidDY6aTlXXcPLWT+Sy
 coTrr9biiXvTPv6xsX3GXTf3KJ0BwAvOqNbn3WUIkK24GGjHfqhpde1iK984IBaKbES7
 084A==
X-Gm-Message-State: ANhLgQ1XzC/QeQUg4usWGbHvCsL1Ko7cUTz7l4dPn4I8zY5E1n3KBGhF
 f3c+Djcfv8h3A2pPJUYXk9uFdg==
X-Google-Smtp-Source: ADFU+vuUCgNBGlrIC6q0jXkCOeMDVk6v4zCvLLNF+fisxd/d/ux7pVwYJODkXoYYMQMCHN7zBoB2eg==
X-Received: by 2002:a63:cb4a:: with SMTP id m10mr3053257pgi.259.1583225268322; 
 Tue, 03 Mar 2020 00:47:48 -0800 (PST)
Received: from VincentChen-ThinkPad-T480s.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id q13sm23825883pgh.30.2020.03.03.00.47.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 03 Mar 2020 00:47:47 -0800 (PST)
From: Vincent Chen <vincent.chen@sifive.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com, jason.wessel@windriver.com,
 daniel.thompson@linaro.org, dianders@chromium.org
Subject: [PATCH 3/5] kgdb: enable arch to handle more query packets
Date: Tue,  3 Mar 2020 16:47:43 +0800
Message-Id: <1583225263-26245-1-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_004749_259913_DBE6893F 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vincent Chen <vincent.chen@sifive.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

KGDB only supports parts of GDB query packets. Add
kgdb_arch_cmd_query() hook function to enable arch to handle
more query packets such as the qSupported packet.

Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
---
 include/linux/kgdb.h   | 10 ++++++++++
 kernel/debug/gdbstub.c |  6 ++++++
 2 files changed, 16 insertions(+)

diff --git a/include/linux/kgdb.h b/include/linux/kgdb.h
index b072aeb1fd78..bbb35557f76d 100644
--- a/include/linux/kgdb.h
+++ b/include/linux/kgdb.h
@@ -177,6 +177,16 @@ kgdb_arch_handle_exception(int vector, int signo, int err_code,
 			   struct pt_regs *regs);
 
 /**
+ *	kgdb_arch_handle_exception - Handle architecture specific query packet.
+ *	@remcom_in_buffer: The buffer of the packet we have read.
+ *	@remcom_out_buffer: The buffer of %BUFMAX bytes to write a packet into.
+ */
+
+extern void
+kgdb_arch_cmd_query(char *remcom_in_buffer,
+		    char *remcom_out_buffer);
+
+/**
  *	kgdb_call_nmi_hook - Call kgdb_nmicallback() on the current CPU
  *	@ignored: This parameter is only here to match the prototype.
  *
diff --git a/kernel/debug/gdbstub.c b/kernel/debug/gdbstub.c
index 4b280fc7dd67..2b2e7b99edcc 100644
--- a/kernel/debug/gdbstub.c
+++ b/kernel/debug/gdbstub.c
@@ -694,6 +694,9 @@ static int gdb_cmd_reboot(struct kgdb_state *ks)
 	return 0;
 }
 
+void __weak kgdb_arch_cmd_query(char *remcom_in_buffer,
+				char *remcom_out_buffer);
+
 /* Handle the 'q' query packets */
 static void gdb_cmd_query(struct kgdb_state *ks)
 {
@@ -792,6 +795,9 @@ static void gdb_cmd_query(struct kgdb_state *ks)
 		}
 		break;
 #endif
+	default:
+		kgdb_arch_cmd_query(remcom_in_buffer, remcom_out_buffer);
+
 	}
 }
 
-- 
2.7.4


