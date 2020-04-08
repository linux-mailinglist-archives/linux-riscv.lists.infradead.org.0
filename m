Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A84D71A279A
	for <lists+linux-riscv@lfdr.de>; Wed,  8 Apr 2020 18:58:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:From:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Reply-To:
	Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tB41HokhOtXxgAgqwRKeN22jcZwV4OnIByM/YwNjaY8=; b=pTbqhGAZ3q4zXi
	cxuWZ/GhzYNxBz8gXTaKzNnT3mL+br9vYSaPy6LYU/d+OUlMgQh4TWqplGG4V+YyWb65Txpq7fR7t
	XH7LWZ120ZOs/lF4LulyGl7TyZ9rOPPVW8VZHqCGj55DMVJm7KIKeRY+gy23sM9xV5zF9GDTZbRxJ
	CP012dKWc24/F4OaYHgK9LOg5DONk7rSz3yrYay01BN6zs6na4v0JyGYWRyGTv3rMjioqDrmqAT1j
	lUYYGh2s4Pv2jdU3HKhrnmvavhlO4C9tMAPR8/DdxQp5r73CMlVyW+/FgB4f7x41B8yu4uXaR0DZZ
	gynxsvVmT50CJCYVMkEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jME2N-0003mM-F9; Wed, 08 Apr 2020 16:58:51 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jME2J-0003lp-UD
 for linux-riscv@lists.infradead.org; Wed, 08 Apr 2020 16:58:49 +0000
Received: by mail-pf1-x434.google.com with SMTP id l1so738485pff.10
 for <linux-riscv@lists.infradead.org>; Wed, 08 Apr 2020 09:58:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=subject:date:message-id:mime-version:content-transfer-encoding:cc
 :from:to; bh=tB41HokhOtXxgAgqwRKeN22jcZwV4OnIByM/YwNjaY8=;
 b=0/noJG/WpSYp72Rout+x8qAEkv6W9R2KPS5Z7TAZT9HG6LMJcf1wqdHuTPEmc7bYr0
 PilxXDuupKCRVMMACHPVji/zXmV7qGS5Dk9jK556j24vi5Gb7+2BPVtAMphYfC1wdis0
 hspERgJKxIvoIzt0O376WSIKKVeZUtKYabBAMu9/zEIMXLkt58X1xpias0kxo4cvEgKz
 53JqqYgwrvFclqEYyPnYmgU3kQ0NXnugfmSOftb+fs1gFfTosNYPOctUsDFQP4k/Qf/p
 u6sIsH2gylLs9skbpXP5sOv/MrDVn8jq7BXqowfn+A6g+H4C8u+vR4w4Q+UG2Cf6w7YR
 fgHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:date:message-id:mime-version
 :content-transfer-encoding:cc:from:to;
 bh=tB41HokhOtXxgAgqwRKeN22jcZwV4OnIByM/YwNjaY8=;
 b=ggR5p1EZ+53Bkgt/4M/m5pOGmBoxkPDDFoTOmHn5v86XW1QX+dCMTb5ldGoubmhrBP
 xl70rhTr9kq8pYgmlzc+MPcZQAlFoFuuP3akEotPljB+ciHsIawiM5sbOmRyG62QOViy
 I2JwDkyHz4ybItBaDPNPOz9WhfCMGuqzdkVEE/FuSg4ArIRJgfNFigCMctlMg80z8UJ3
 o0qAAbkQ4osH1tHFcQ1P+lGQ/wxeGUM2Oq0+Yq27jH3cs67qMnaxCRPVrkLFFVuoXDYO
 cmS+yQa3iTYH+lsAWrsNYAmY7OnfV4ODO4kndN4bKmCJRx05Pan3VweruoBYg8fTVz/a
 SQJQ==
X-Gm-Message-State: AGi0PubOI9huu/B5uuy1C6PNaftXjzFEBb3QEJeTVmtf9CO2srU3rWCh
 L4w3VRgA3jdFswSr8EN89laPEp8Do9Hdqg==
X-Google-Smtp-Source: APiQypJHHqc9lQVHcvv0lieRxho6frOZkYKonNFygeJ23UzMNX2CIHY4maycCfr+GZ75gEIruDWpSw==
X-Received: by 2002:a63:dd0a:: with SMTP id t10mr7664081pgg.229.1586365126936; 
 Wed, 08 Apr 2020 09:58:46 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id y13sm16846588pfp.88.2020.04.08.09.58.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 09:58:46 -0700 (PDT)
Subject: More K210 Support
Date: Wed,  8 Apr 2020 09:57:38 -0700
Message-Id: <20200408165802.167546-1-palmer@dabbelt.com>
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Palmer Dabbelt <palmer@dabbelt.com>
To: linux-riscv@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_095847_971746_BC09B16C 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:434 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, kernel-team@android.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

* Builds a table of device trees, keyed by mvendorid/marchid/mimpid.  This
  allows multiple device trees to be built into the kernel.  I don't really
  like maintaining the two lists (one in C and one in assembly) or having that
  function in the table, but it's the best I could come up with.
* "handles" PMP traps by just skipping the PMP setup phase.

I don't actually have a K210 so I can't test any of this.  I also couldn't find
the K210 identifiers listed anywhere online, so someone will have to dig them
out of the board.

I also didn't spend any time thinking through how we free these device trees,
but given that .dtb.init.rodata already exists as a section I'm just guessing
that's were we're supposed to put them.



