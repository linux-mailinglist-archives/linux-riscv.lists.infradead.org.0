Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9CFD1943
	for <lists+linux-riscv@lfdr.de>; Wed,  9 Oct 2019 21:54:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U8ZyWHXfUC9rtJrBPLTIuNUTOLYi+/rTX2iiOz5aiFI=; b=QX9ovh0GD0k19p
	mdhMrK+gTQs/aPOMZgRoeq0JTtvT8l27sI9IfRMf479BCQChAuxgtNDMRxvdqwoRaXdagE9FWfSPI
	FFflKVi5n9uwmxZBDtldF/oV2sfgFAG4h+HbaXASaKjN0w3a6k+sd/dYndtUHzTO9Q2JY9vzm4g5u
	Kf0nItKdbiDT1C1ZaJNbTX3mj2tI2iHbXYFwYcr/RmYHlM+TnzFEGX5uombcb1oLhPrgj7iXuoK/W
	GhWYiyjtOEIyBLbbKyeWEReqeoP69OL98fvbvu2NBfLW3DhJH/mO5lKBNkliI9PjU5IOXWk3D5HpG
	mLGed/p8RviFlhlb74WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iII20-000636-HJ; Wed, 09 Oct 2019 19:53:56 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iII1w-00062O-Mt
 for linux-riscv@lists.infradead.org; Wed, 09 Oct 2019 19:53:54 +0000
Received: by mail-io1-xd44.google.com with SMTP id q10so7978479iop.2
 for <linux-riscv@lists.infradead.org>; Wed, 09 Oct 2019 12:53:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=H5oadYdtYiWqz6jIut7b8l+pt98Mf79JimwAWbyu918=;
 b=PX03dNUvlcc82iOKTuYOxdwvY1PLDPZlXvQFmpxrQgKDUU3BGA0Kg5rrOhBTmMngUS
 pFqxRqwL/ilOz9yU7Nzh67SdJN/YilXyBla7VcV8V2yDrCv8ELgB472QZZNYNheRzClr
 xANo+VYD2gt1c4vFA6OW0deW6I19Y58pwtNtaq2ndj1wgKIuVcufGnu4PZmVt0c/9cDW
 04SDCA1BouCoaIhzkRlVydP7BljqEoqbzaSjgMokAiO/1h8bQTK5kPb5xAWIstgDs3am
 zVRa8Yc9S1KrXT0bovrY/vtTz0WS1jFsoOxBPj0u08TzEsUKSgEMrT0HEyW/SPRbsyym
 TBSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=H5oadYdtYiWqz6jIut7b8l+pt98Mf79JimwAWbyu918=;
 b=m+zheZEtOVP3B+sdRFU3EjWYdJxKr6mouxHTBz5Px8Z+0/7+x5q5wYt5ivPbbQA1Dl
 GGzmtGcMwM2Ow5+wlh9rgw7+z8bjohdwj7E60KcErzvVWv3kJect6e2+FnQHcylj78oB
 vvBaas6dUH296F4Wn3BUhC4bam1QROh/3/xK8y4FplAwZpjSxQauqv/BYdEWcz0z5s0x
 JAKWJVAyDvnLJRhzHAnYrKPljgL8n7ZX592BmaC8wjbjBFs5Fn44eyjRf/Gvyzcr569f
 VV2uYQOk3AYfxydA/UgG7GXnzTsaJdRgcDi33qh150z05EOVf1C9R12pSS42DdJSIA3E
 PdRQ==
X-Gm-Message-State: APjAAAW+XNipYmzqN3FWAS4na3hCQiV9U0zAw6iMLcgEC6cQ88BHSG9f
 CzgrFNWWyNaF6uabvOL7gY54dg==
X-Google-Smtp-Source: APXvYqxBWF80a/mKx1FkTcVxpurf65iP5tY1NfcOpVEx9+bKX9bhqeJX8QTsiaRG4IK0jOVBLqiNGg==
X-Received: by 2002:a02:497:: with SMTP id 145mr5332312jab.10.1570650831466;
 Wed, 09 Oct 2019 12:53:51 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 u124sm2253532ioe.63.2019.10.09.12.53.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 12:53:51 -0700 (PDT)
Date: Wed, 9 Oct 2019 12:53:50 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Jonathan Corbet <corbet@lwn.net>
Subject: [PATCH] Documentation: admin-guide: add earlycon documentation for
 RISC-V
Message-ID: <alpine.DEB.2.21.9999.1910091252160.11044@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_125352_749261_6632B0C1 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-doc@vger.kernel.org, Andreas Schwab <schwab@suse.de>,
 linux-kernel@vger.kernel.org, Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


Kernels booting on RISC-V can specify "earlycon" with no options on
the Linux command line, and the generic DT earlycon support will query
the "chosen/stdout-path" property (if present) to determine which
early console device to use.  Document this appropriately in the
admin-guide.

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Andreas Schwab <schwab@suse.de>
---
 Documentation/admin-guide/kernel-parameters.txt | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index c7ac2f3ac99f..011fee969ece 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -990,6 +990,10 @@
 			[X86] When used with no options the early console is
 			determined by the ACPI SPCR table.
 
+			[RISCV] When used with no options, the early
+			console is determined by the stdout-path
+			property in the device tree's chosen node.
+
 		cdns,<addr>[,options]
 			Start an early, polled-mode console on a Cadence
 			(xuartps) serial port at the specified address. Only
-- 
2.23.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
