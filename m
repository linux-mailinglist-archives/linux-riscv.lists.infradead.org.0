Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82127181F7
	for <lists+linux-riscv@lfdr.de>; Thu,  9 May 2019 00:15:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=uEesVY4CWRH/hnGTcjBFqCJCk5QAEJ7Me7otMQKX3UY=; b=A9e68R4YhGIKWiohoFxq3q22c
	YKAehLqP3E83ElYHuS1DE7fjvGEyjuPs5lwcq9vrqb3O67sZMCoGAT4mjW9uLG10xvBWLZ1NZZ0jR
	blf9kXI9aPIa0oItY0v7eNt7AzxBQirlFOApLHJk67ASp6nrBspo1MUqkqLdN9sy4Vd0lDm6rfKQj
	WxRTndT6tgOClatIvDIE4+Y6C9cUGLP4zUihP2llRxDOPyiXJtUBxjturHAhFCM3bNTvYsCCoAgKm
	BeWpn76kdFn8qEbK+Nt+/r8jADDsEPEFrsK6xAw4DovB1CQw3Fs5VC4vE1z+c5AsKRA2wbXVD+cTk
	/qC8b+ULw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOUqW-0003Cz-0k; Wed, 08 May 2019 22:15:28 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOUqS-0003CH-7U
 for linux-riscv@lists.infradead.org; Wed, 08 May 2019 22:15:25 +0000
Received: by mail-pg1-x542.google.com with SMTP id t187so73405pgb.13
 for <linux-riscv@lists.infradead.org>; Wed, 08 May 2019 15:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=j5oqTOZfM/wzYkzYzHKN4Rn4v0RHvVg75TpBk2POYs8=;
 b=fyhKJivbwhCNIxGWD9VvTgGZQKjleKYyb9Mn+KQlAHxbqmDCtpFfjUN+uV+YZydqi6
 6QNoy9xTULEVo7egm+6oSo/kP1mma7wOVte3SkokmKZpTqcGUSdSrJofu+C7TGf77luN
 7hqDemaQ+tC7BD2IsCHwP/6/zOl8D9PIgQG8PZsxyjlTpvM0NfJ1wk9l5IdVnmd0ebEY
 JGa3qbnMtOiSQ5QGWd2wzjZB/XZHf3Jtv4LGKjfOxLO91YWz8YzNUh/KICQl1FbTbwGM
 sahQDpNsbW2EBDgbLR4Lmi0uxMxyAOey+VHa5qodIMBEx4Lk8LxRb8E1Z7A6ISs4Ok9B
 P38Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=j5oqTOZfM/wzYkzYzHKN4Rn4v0RHvVg75TpBk2POYs8=;
 b=PPyUcOCV8JZ/Tn39t1FWvwulR5BQG2zRfie6UthJY6mpGXr4niOk3FeuWCK/YjsyTh
 KF37tvb+L8bGrtokj0ZApM9Bl9MFPdS/jdK6n5yJjqIasqHwinvj3bvebz2H+OVmLadv
 MTmtZLrOkodOPcrVi6pREohhYG0cWwDWueNnlN3LzuzCYsKKTyzc7N8Fyl3X2GwRE7VO
 tUA1Zas9WPt0BlZjtYV9PHgcNUU5wvGxyfrvuDHcwtJxXWjbzh91H8yyCDwso2D/kiU2
 jTS45sbp2u2HyVjnSNKL1q6QKq/fOE2JnGr2Cw+KnF+0qZWtPNjkz4rDJFlVXd1QgzKu
 xqWQ==
X-Gm-Message-State: APjAAAVur0HIQW3qaV2OREtsi4JzicLYUM/goZVSDF48kMFBS0XLgdUZ
 uO1S62BLDDNrbtXqaWJpu/DcaupkSJMolw==
X-Google-Smtp-Source: APXvYqxxMN7qFq9/AX3hvnuCjjJhcGy7LMd0mKniOf3SMu7iVKLc5c62dSki5omVauPXQnvl0Rs9uQ==
X-Received: by 2002:aa7:8083:: with SMTP id v3mr53782264pff.135.1557353723141; 
 Wed, 08 May 2019 15:15:23 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id r138sm347933pfr.2.2019.05.08.15.15.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 08 May 2019 15:15:21 -0700 (PDT)
Date: Wed, 08 May 2019 15:15:21 -0700 (PDT)
X-Google-Original-Date: Wed, 08 May 2019 15:06:47 PDT (-0700)
Subject: Re: linux-next: Signed-off-by missing for commit in the risc-v tree
In-Reply-To: <20190509074745.65336288@canb.auug.org.au>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Message-ID: <mhng-11a7c796-1d78-4c6f-8b27-e85a6aab3a45@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_151524_407970_59F393CC 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-riscv@lists.infradead.org, linux-next@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 08 May 2019 14:47:45 PDT (-0700), Stephen Rothwell wrote:
> Hi all,
>
> Commits
>
>   da8e7c379659 ("riscv: Support BUG() in kernel module")
>   564bd22ea4e5 ("riscv: Add the support for c.ebreak check in is_valid_bugaddr()")
>   67363778b72c ("riscv: support trap-based WARN()")
>   efd48cf0b393 ("riscv: fix sbi_remote_sfence_vma{,_asid}.")
>   89f7840cf346 ("riscv: move switch_mm to its own file")
>   8c0e1593f15d ("riscv: move flush_icache_{all,mm} to cacheflush.c")
>
> are missing a Signed-off-by from their committer.

Sorry about that, these should be fixed now.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
