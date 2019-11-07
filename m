Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC22F3AD4
	for <lists+linux-riscv@lfdr.de>; Thu,  7 Nov 2019 22:56:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=FWfSbL3vHpq8RNDyUAQnJxTHJuYVvRsy4fOKsVP+prY=; b=elcxuggsWcjZvgHYoGfChxBgA
	yWuEzQuULluDslc80LlaYrZ33jbihj3rCYmiTtqfK8KU5sDOoYKOD6QE4LimVmwvGa5o6v/unjaLP
	yfgfO1NuRm1/IXKNWfD0j3LvyaOT1xRVwVdxP7LPdN+ppaz/1CykGCRS01DaNoYCvqBJVT/qlafMc
	OJiuxArYfDbKLzvZ2Y1K5uEAt3u2kp5miKBP1vU5eyEdoivWGDNsybkOFHG6qV2T6lCmK2fFqUB5m
	Z6bx1dFvtMS3K1fVOdcw7ZNV95MHQbcL9rX9UjDsRCKD2Oqj5oU77nEGvJZ4I27ALGO3V9mBYjRU6
	Y4GS6zeGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSpll-00036H-TT; Thu, 07 Nov 2019 21:56:45 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSplh-00035V-Uq
 for linux-riscv@lists.infradead.org; Thu, 07 Nov 2019 21:56:43 +0000
Received: by mail-pl1-x642.google.com with SMTP id a18so2512494plm.10
 for <linux-riscv@lists.infradead.org>; Thu, 07 Nov 2019 13:56:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=mWI9stxDpq8HJvqv8MCISb1ecAdUqoG0T1yUS3u0IrA=;
 b=s6jn1u0Kn+ufylzuMEdtOyFKuLD2exS9830kqrL8skohXscPiciZr4QIvU52nusuFN
 G9bfAFb9pUxCEqp8O8G/9FJKau0y9+bkclzBOZszFINzEU2pv9Ns8AuuV9vpUFeRef+F
 XSd5IwXG0je9F4DYdkMnLZCED0qQL4KixehnjwND0nCgFfmp/ktaFi+vucg9MQ/T7GCS
 yuDOiZRp112qlfDiuPPorFYOLFRl+52BB1zNcme6CvVv61B4V8YATnFoh2f2/7P9VT40
 j0iv692KZCbB/u1a4LBT0YsfXbP85XkviJkxXqM08bstxkgv8uPJ1adoKbx7/fPGpR0T
 jLrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=mWI9stxDpq8HJvqv8MCISb1ecAdUqoG0T1yUS3u0IrA=;
 b=GdML5uThEXREVBwyvXiOMwxeTI8OfMKDQ2FfpMTCTGBilbVIUqavV9/fA7Y+aI1AXK
 M7Rdj+KgJzVoeiYzB7gS95tp9IHb6Lt5QEooBbrBBKha9ZqfP8DzmVcJNA2kGsMHtdZt
 aGdd/rWJXsIvnoglhliKBLwZ+sc4oPdtVpLuaq4bPXYuUu8NhIZ0kwpKdu6m/xHYE6/o
 VP9xhz1/TMy7fzSLXYvqXtCQNN2y0UIT/1dnWx217KDlo6Aw74itYCn91rHYUGC19Q5r
 mprUdx1dEvwgbLER2YO1VTmD/QzqP/UMduVvkFdZCPOmPkDi8/LYX0yEC9na0ehI8EPS
 A0kA==
X-Gm-Message-State: APjAAAXOiPSI+XaBTCaKY77dI1WoN8GplwTc2Hkv79tlsq2zIXkoYM4C
 tf9Z3UQM9He8+oHeicZFgVp8HQ==
X-Google-Smtp-Source: APXvYqypGBDtT9XiTGKw7mXsmVqn69WUWL+JDoHnXMUjftIDLB7WHBnLsDcY3YunwBRu2ri7IywBDQ==
X-Received: by 2002:a17:90b:300c:: with SMTP id
 hg12mr8533144pjb.75.1573163800561; 
 Thu, 07 Nov 2019 13:56:40 -0800 (PST)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id b17sm4046597pfr.17.2019.11.07.13.56.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 13:56:40 -0800 (PST)
Date: Thu, 07 Nov 2019 13:56:40 -0800 (PST)
X-Google-Original-Date: Thu, 07 Nov 2019 13:56:36 PST (-0800)
Subject: Re: QEMU RISC-V virt machine poweroff driver
In-Reply-To: <20191107212408.11857-1-hch@lst.de>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <mhng-0dedc685-73d2-4e7f-b608-69385a6e7a99@palmer-si-x1c4>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_135641_994522_598ABACA 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 sre@kernel.org, robh+dt@kernel.org, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 07 Nov 2019 13:24:06 PST (-0800), Christoph Hellwig wrote:
> Hi all,
>
> this patch add a driver for the test device in the Qemu RISC-V
> virt machine which allows properly shutting down the VM.
> It also is added to the riscv defconfig given that qemu-virt
> is the most popular riscv platform.

Thanks!  I'm assuming this is going in through some other tree, so

Acked-by: Palmer Dabbelt <palmer@dabbelt.com>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
