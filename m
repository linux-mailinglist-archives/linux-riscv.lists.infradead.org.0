Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A9D3107AF1
	for <lists+linux-riscv@lfdr.de>; Fri, 22 Nov 2019 23:57:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cj24wtyRKc+DYBEbKTAG/MIlAaNxvHJhAMmnPzgmx2c=; b=m5JkL1RYWeIIpM
	BMnVHIG8bdgIDdykQHUs84QehtFv9ytRLshdl92SmDPyuXJqtkEGU+AnbGnoH/oKKovbmrmFyxnB+
	b92sWLu/FAGnc5Psu/WRthe6QtkHZEVjQTl+zsEE5bpujHwvPueSTuMA49AQ5MskueNoLRs7xVh82
	7+X4Ln4aQn+hm3cPvHTKN41k5xNbfiCJvm8D8wbi5UtYBx4qKnMiaN3X2ug2UlmBM7r3fJguPWOX5
	UYXdYKelHbBy1a9rRbPmPrqgfRiwHRuh8FUhy4RTMRAtOakh2Sn6RGX/gi25GXXcbg41LkQXq0tUM
	cSkIHuX2L8pBpI7ORP3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYHrw-0008NX-KD; Fri, 22 Nov 2019 22:57:40 +0000
Received: from mail-io1-xd2a.google.com ([2607:f8b0:4864:20::d2a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYHrt-0008Mu-3d
 for linux-riscv@lists.infradead.org; Fri, 22 Nov 2019 22:57:38 +0000
Received: by mail-io1-xd2a.google.com with SMTP id j13so10012512ioe.0
 for <linux-riscv@lists.infradead.org>; Fri, 22 Nov 2019 14:57:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Uj2Ztb9iUAhbf9rH9PWOL69mPO/eEt+nZByhj8SBdF0=;
 b=TtdrSbZ13QpZA+903XTzpENZhwLPlCl3eTbFupVTijcqqQXV6OKHmcjVrRp3tzA7Kh
 moALB6g9sRrAlmWGrcMWWJsLVEWzpOBkn1rJN7CxBa5FdW/D1Y27t5zsnt7JWe2DOnLj
 OOWZzFSHbxZ25VHBCA8lM+IYM03/UDpIXO6fTmOSxP9PWgHutbno13uQEAiIuTeAaEQK
 FOBtW9im2KVSkmOpaGamtbEOiHXSJQjmQRBaRixtxtjgblZzHQCJ8NfGo3X7bfkdpZg0
 +jrlfl+a2emN/TBtXwWZndcuOpG6GZLLT++33jgsi3R4vp4pGRmBFvwgZASxW02JBv4Z
 n52Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Uj2Ztb9iUAhbf9rH9PWOL69mPO/eEt+nZByhj8SBdF0=;
 b=Trig4hVJlGD3L2ULFvq224EnwFXb+NdbHDGqdvIBsDhbcY/NW3fqKMLVjKv2PytjIu
 T0k9iLupkhQFz04g09iVCLy+w+Bm7T/bxqX3Xy9jeIr9fPFPEImAIqv1IzxeBKx9OrBs
 //NwycatJ7jCcMTKLxh0Oz5HxkjnUDHNnpcOF/v2fwuI+aJBkZnddmdIacBA0VINird4
 aXvSqQPp1Kf/VSG92hwWsbRzXtjQtPCIzyF/19zJylV5hVDoOwz9xMX9/1GvQInm+fgN
 X787hKHLYf5nfLlz0LR+LFLEB2l0Y17+y3JquhnLA+15GIPbN+jnrCNcp3jKZWgXVGth
 BpKA==
X-Gm-Message-State: APjAAAVtnVK+ROMejof07VsCm2PZCGUZf4sLw1awFqUB1mLaMD2YrErm
 StUp1bXuIBxOsLaqG/lNlFJosGkeeUI=
X-Google-Smtp-Source: APXvYqyDDR6XWNHRiIJMoWrs9+l4wDYNEH8Foe6GnyqUiQ3MqB9IEAxn9IL9m83C6JG2XUbIuXEZBQ==
X-Received: by 2002:a6b:c8cd:: with SMTP id y196mr8658070iof.266.1574463454895; 
 Fri, 22 Nov 2019 14:57:34 -0800 (PST)
Received: from viisi.Home ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id x9sm3277098ilp.43.2019.11.22.14.57.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 14:57:06 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
To: linux-riscv@lists.infradead.org
Subject: [PATCH 0/2] riscv: defconfigs: enable debugging options 
Date: Fri, 22 Nov 2019 14:56:57 -0800
Message-Id: <20191122225659.21876-1-paul.walmsley@sifive.com>
X-Mailer: git-send-email 2.24.0.rc0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_145737_180867_DA05305F 
X-CRM114-Status: UNSURE (   4.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Enable more debugging options in the defconfig.  Debugfs is generally
useful for everyone; the other options are intended to make it easier
for developers and testers to catch problems earlier.


- Paul

Paul Walmsley (2):
  riscv: defconfigs: enable debugfs
  riscv: defconfigs: enable more debugging options

 arch/riscv/configs/defconfig      | 24 ++++++++++++++++++++++++
 arch/riscv/configs/rv32_defconfig | 24 ++++++++++++++++++++++++
 2 files changed, 48 insertions(+)


Kernel object size difference:
   text	   data	    bss	    dec	    hex	filename
6665154	2132584	 312608	9110346	 8b034a	vmlinux.rv64.orig
6779347	2299448	 313600	9392395	 8f510b	vmlinux.rv64.patched
6445414	1797616	 255248	8498278	 81ac66	vmlinux.rv32.orig
6552029	1921996	 257448	8731473	 853b51	vmlinux.rv32.patched

-- 
2.24.0.rc0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
