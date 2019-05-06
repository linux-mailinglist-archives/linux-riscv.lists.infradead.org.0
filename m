Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A22148E5
	for <lists+linux-riscv@lfdr.de>; Mon,  6 May 2019 13:27:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=F2YZveDL6E02hsC62JIVDmrqYmiGO48na7zRx520c7Y=; b=C9r
	d5AlhF/l7NYjAIhU3CoZHAJMTDNzzdpV4tvIhSBnBl287zI9nftO97AUOppX6spmN8/gH8GGlILYO
	89dPQm1pHRoWCHFMHFGsoLx9Y9vJ3Q5pVRoyL+Nk8kbGo89nJma1yrQkWn+5SJMw5kAK1OnWywpfy
	nFIOx5L2G8uPHtWHnmvO/8NgNBTVsuc9Qt+xNzzZhGXRpdnHRnXe/NOoTYBqwx9WI0pUARsVQzlWi
	1PlPVFVAf7RB2k3d4GhUUSQHNmhLOLcQHjc5SQu0qousY4W+Ko5cFTVlSO04HHJ2/RG9Mhg8XYEuq
	X+GQaECx+/aLAImtBfKzv46bcC3TIJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNbmV-0007PY-Fi; Mon, 06 May 2019 11:27:39 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNbmQ-0007Oh-U1
 for linux-riscv@lists.infradead.org; Mon, 06 May 2019 11:27:37 +0000
Received: by mail-pf1-x441.google.com with SMTP id g3so6606362pfi.4
 for <linux-riscv@lists.infradead.org>; Mon, 06 May 2019 04:27:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=MkPuHs9MpdmcYLP05ibBDjwFgoo9Bzabjg0rXaXjY8o=;
 b=YVZTIM/PRH70xiHiNZ3g4QeIjRfn6Spvf7lAc4DK9eDJENXGWEbwBGHPRuEWzvXB3K
 eeYjKpOvjVA6W+1IWTdLmyb5D7UwurznsaIQBklg2OVuP6ya8Nuy7uZRYw4ks+ttRt4x
 xEoE8R+Gs40NAu0+DOK6T40m1CdJF5cNgcJOxvqxxNJ6JXuxg44jYMrm8Eg3+Pkm4aYm
 sXjB4XphUS+L8hWhMsucwjRVW3qu4/L0Tilxoz94EDqKxVKMK0SZ55/6glKz3TEFsjhh
 8xPK1Z822u3Aj/22Z8Pk1rrKbuf4YuQUw6VTa7h+9V0tWFTcczuc3gTUelkDvPGvQcUD
 n1ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=MkPuHs9MpdmcYLP05ibBDjwFgoo9Bzabjg0rXaXjY8o=;
 b=TniE8otwPV9AaxhjeTcKxe+5yucroMK3Uzr8ZVDu7F/6nVbdW/PKi/WISOmODA6FKo
 KbY5QurXxY9VuilnLI0+040tOshGUfeWQ7U/cPO7htDQkwrjQWltuvfYqdvZdAZA0I35
 sm+ttLpG1XkWiBJnJNML7xOtDmjRh13R8pImbPdET1F8W8335M+uE7XVIsZw9+y80gih
 0dNdNp91Om947i599AjhDnDvLcSm3ugXu5jwWdm0ytrhtaQS0MnvuuNcx//5PHophQ4s
 aRYJ4ZBRzzA4NIjWLFNPQQOM3L/yJgwGw2PZYAmdQYXSgs0hjvtvu+4HPssRa2wRYE4j
 4l5Q==
X-Gm-Message-State: APjAAAUugqaz4L6fPgoOB3LmqsR2PKEsjpDga0wdXAoTHOm7L/pifdYO
 IlVVkiyqvhXPnuHdL+gtcWrD1Xb0N24=
X-Google-Smtp-Source: APXvYqypdffY+Z23d/npCXxA3vA8vPoVVmSlKn+AhYIVb+CdTJzYHXc/Pk9JzJmfD2szzXOKjQVSfA==
X-Received: by 2002:a65:5687:: with SMTP id v7mr31142196pgs.299.1557142053267; 
 Mon, 06 May 2019 04:27:33 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id k4sm23990693pgh.27.2019.05.06.04.27.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 06 May 2019 04:27:32 -0700 (PDT)
From: Yash Shah <yash.shah@sifive.com>
To: linux-edac@vger.kernel.org, linux-riscv@lists.infradead.org,
 palmer@sifive.com, bp@alien8.de, james.morse@arm.com
Subject: [PATCH v2] EDAC support for SiFive SoCs
Date: Mon,  6 May 2019 16:57:05 +0530
Message-Id: <1557142026-15949-1-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_042734_975475_73FADE45 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: aou@eecs.berkeley.edu, paulmck@linux.ibm.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, nicolas.ferre@microchip.com,
 sachin.ghadi@sifive.com, Yash Shah <yash.shah@sifive.com>,
 paul.walmsley@sifive.com, mchehab@kernel.org, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Adds an EDAC platform driver for SiFive SoCs.

This patch was earlier part of the patch series:
'L2 cache controller and EDAC support for SiFive SoCs'
https://lkml.org/lkml/2019/4/15/320
In order to merge L2 cache controller driver without any dependency on EDAC,
this EDAC patch is re-posted separately with updated MAINTAINERS entry.

This patch depends on patch
'RISC-V: sifive_l2_cache: Add L2 cache controller driver for SiFive SoCs'
https://lkml.org/lkml/2019/5/6/255
The EDAC driver registers for notifier events from the L2 cache controller
driver (arch/riscv/mm/sifive_l2_cache.c) for L2 ECC events

The patch is based on Linux 5.1-rc2 and tested on HiFive Unleashed board
with additional board related patches needed for testing can be found at
dev/yashs/L2_cache_controller branch of:
https://github.com/yashshah7/riscv-linux.git

Changes since v1
- Move extern definition into sifive_l2_cache header file
- Replace NOTIFY_STOP with NOTIFY_OK in ecc_err_event()
- Other minor fixes based upon comments against v1

Yash Shah (1):
  edac: sifive: Add EDAC platform driver for SiFive SoCs

 MAINTAINERS                |   6 +++
 arch/riscv/Kconfig         |   1 +
 drivers/edac/Kconfig       |   6 +++
 drivers/edac/Makefile      |   1 +
 drivers/edac/sifive_edac.c | 119 +++++++++++++++++++++++++++++++++++++++++++++
 5 files changed, 133 insertions(+)
 create mode 100644 drivers/edac/sifive_edac.c

-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
