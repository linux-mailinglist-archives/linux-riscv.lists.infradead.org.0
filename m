Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 386941A5BD1
	for <lists+linux-riscv@lfdr.de>; Sun, 12 Apr 2020 03:42:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tK7Fpv4aCmQXwDlW18NmZl3nQqaQA+3l7FQ39AlK2Tk=; b=OD11eXVDMsBsC1x8fg34YqAcZ8
	ejulEhTSFW1m6O+Jd8w/5ydiBgjdZX+2xptAgxWD7WV2J11I0zCh2HCZtAhfFG2HFHeZ5ntrIh/jB
	xg/98LgYBnsigZi+yXqnmQK74bQPBzjBLEuZ/0zZ2acIiWatNUgwZuXE5RIujPOvGFGFwQjsRJmJL
	62hQx5JnV3xYAtASBPaSjR2VJseOP/f5PwKA3x1vELeZZgbPY63bmvZ37cVWap77bH9LOrrtjgFEP
	DAeREvfonhR88eGYRwtx1gwxt822NC0scqcSrh38nKbliLDX4xntNDLDzLIzBLIO/0VabQi9q3tW1
	35n0labg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNRda-0003gS-F5; Sun, 12 Apr 2020 01:42:18 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNRdU-0003fg-H9
 for linux-riscv@lists.infradead.org; Sun, 12 Apr 2020 01:42:15 +0000
Received: by mail-pj1-x1043.google.com with SMTP id ng8so2414239pjb.2
 for <linux-riscv@lists.infradead.org>; Sat, 11 Apr 2020 18:42:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=tK7Fpv4aCmQXwDlW18NmZl3nQqaQA+3l7FQ39AlK2Tk=;
 b=lYvjiAiz6rGu0urXdA+Bc7PKP9bnQ4RC14QA+VzbdFHJtIEr1SlTLLNtVoKi3yFFJK
 +Ct2Xlnq9WdWi6Ijpe/i4Bsxemc6P0TUeetDtShsmt8xPinGLuIOI5TaiIZU3Jw8oIBT
 4NbeVTgUD+udYuC8u2Tg6D7g+hSvf6fNa7bOengUk1LlySTJYMEPF5Edw5iTasTsTjbC
 Bl8bYbodlyJ5SQE9CZNnpGOBwsaG7o08HmpHAvEq8p+nky5kyfh+acZdqaWkGGammu0e
 Y02+Ru8D1uU2iZSM3zaEOqVVUkPIyJralUTwXxTCecBciawpzssQh9ZLWpyKx4aPblGL
 zYTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=tK7Fpv4aCmQXwDlW18NmZl3nQqaQA+3l7FQ39AlK2Tk=;
 b=A+SqHOEzC2Qq2sqiocyot/kMoMOWloEW93E46um5QWQ4lpbSssQh1+IL8HH6kxLdKE
 T0ixlc9EfpfQNr/7kLVcM75ep01585a7faW7psYSLPP/+bUISoXJhJsnTiZyb4JHJQnw
 eNNHSIU1GT7KmUlxvMLs//K/+LPwK0o7ZFaHpWbf4xg77sGCydEEBwDEoOT82cI7WbfW
 oiqz19udTwi0s6qE1UaxVHzYmdaYTgVt0Pb/Nne/d9f5FUiVkHX8PCw7JEbKezEYndVM
 ctCRtgbqNe1VZSaHzlCUwdqrTNVyf251B2yGI24QcAuHqUNs6FwahgufLawYZZ5W2MoF
 qgFQ==
X-Gm-Message-State: AGi0PubpGMKscxbB7ZXkNzrpZyEVSf1sueXv2vfS1fP8waTBs5TlV2H7
 DbZHb6wuFAfb/4AyXNil0iMSZE24PtU=
X-Google-Smtp-Source: APiQypKLIMGGzCOutz9uEpF8wZgrif4zOooehO54sdMo0ZHoAOtjELmL0E8PkNP3E8TZeuB7B9GLMA==
X-Received: by 2002:a17:90a:a402:: with SMTP id
 y2mr14468910pjp.55.1586655727738; 
 Sat, 11 Apr 2020 18:42:07 -0700 (PDT)
Received: from localhost.localdomain (123-195-35-41.dynamic.kbronet.com.tw.
 [123.195.35.41])
 by smtp.gmail.com with ESMTPSA id w90sm5252900pjj.2.2020.04.11.18.42.05
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 11 Apr 2020 18:42:07 -0700 (PDT)
From: Vincent Chen <vincent.chen@sifive.com>
To: daniel.thompson@linaro.org, paul.walmsley@sifive.com, palmer@dabbelt.com
Subject: [PATCH v3 0/5] riscv: Add KGDB and KDB support
Date: Sun, 12 Apr 2020 09:41:56 +0800
Message-Id: <1586655721-22567-1-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_184213_089937_0ADA535D 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
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

This patch set implements required ports to enable RISC-V kernel to support
KGDB and KDB features. Because there is no immediate value in the RISC-V
trap instruction, the kernel cannot identify the purpose of each trap
exception through the opcode. This makes the existing identification
schemes in other architecture unsuitable for the RISC-V kernel. In order
to solve this problem, this patch adds the kgdb_has_hit_break() to kgdb.c
to help the RISC-V kernel identify the KGDB trap exception. In addition,
the XML target description was introduced in this patch set to enable KGDB
to report the contents of the status, cause and steal registers.
 
This patchset has passed the kgdbts test suite provided by Linux kernel on
HiFive unleashed board and QEMU.

Changes since v2:
1. Fix typos
2. Rename CONFIG_ARCH_SUPPORTS_GDB_XML to CONFIG_HAVE_ARCH_KGDB_QXFER_PKT
3. Add the prefix kgdb_ to the handler functions and arrays that handle 
   "qxfer" packets

Changes since v1:
1. Replace the magic number with macro when filling the gdb_regs[].
2. Only support GDB XML packet instead of all query packets.
3. Move the macros used to parse instructions to parse_asm.h

Vincent Chen (5):
  kgdb: Add kgdb_has_hit_break function
  riscv: Add KGDB support
  kgdb: enable arch to support XML packet support.
  riscv: Use the XML target descriptions to report 3 system registers
  riscv: Add SW single-step support for KDB

 arch/riscv/Kconfig                 |   2 +
 arch/riscv/include/asm/gdb_xml.h   | 117 +++++++++++
 arch/riscv/include/asm/kdebug.h    |  12 ++
 arch/riscv/include/asm/kgdb.h      | 113 +++++++++++
 arch/riscv/include/asm/parse_asm.h | 219 +++++++++++++++++++++
 arch/riscv/kernel/Makefile         |   1 +
 arch/riscv/kernel/kgdb.c           | 390 +++++++++++++++++++++++++++++++++++++
 arch/riscv/kernel/traps.c          |   5 +
 include/linux/kgdb.h               |  11 ++
 kernel/debug/debug_core.c          |  12 ++
 kernel/debug/gdbstub.c             |  13 ++
 lib/Kconfig.kgdb                   |   5 +
 12 files changed, 900 insertions(+)
 create mode 100644 arch/riscv/include/asm/gdb_xml.h
 create mode 100644 arch/riscv/include/asm/kdebug.h
 create mode 100644 arch/riscv/include/asm/kgdb.h
 create mode 100644 arch/riscv/include/asm/parse_asm.h
 create mode 100644 arch/riscv/kernel/kgdb.c

-- 
2.7.4


