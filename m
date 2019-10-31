Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47336EB765
	for <lists+linux-riscv@lfdr.de>; Thu, 31 Oct 2019 19:42:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cT6Ul5T+Kw4/a1vZxybTMjtdPPyQZpBU/EtLjVKCg4Y=; b=IRRhOdCtdOPIqu
	Guq3dsNSRvwmAWZssvy+CQmuZwz1vGTEY4TSaMg90RNZN+4BZKyZGoTszxgfL5rxAvor3Gs5j8fbs
	/z87V8ClpPSy9PtP5ue4TTH0UNV2uC9hHk3CEbEIEUG1U8h1R+z/cKJ7d2rul21zKYl2eRaYk7rIz
	etFyIwlFk8jG9wzkX9KhZ5yn3/Q1MGfOWge+4pJd/hVLhjwfKQj+9XBq8f3bevJ+04qwWlzvU7yUW
	iXm1++3ogUL8+2PwB3N+DLAYp2nbsgdp0QOHclgIs3g4i9Q2h6iWnXY5LYnWYHBq9XYOzEVg0VG8G
	eBssZIgx5OHKkcyZnxAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQFOz-0000L8-OI; Thu, 31 Oct 2019 18:42:33 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQFOw-0000KZ-7S
 for linux-riscv@lists.infradead.org; Thu, 31 Oct 2019 18:42:31 +0000
Received: by mail-wr1-x442.google.com with SMTP id b3so1614248wrs.13
 for <linux-riscv@lists.infradead.org>; Thu, 31 Oct 2019 11:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/2yZeQfz4XOp0BFILcmniFZN2jYEF122j/LrdF+3/74=;
 b=nmaCWMLjlnIr8GhTuFUZ+ujl//KbPHO761MMMTpN09vE/plNDxByLpY44Yz0OBY2YZ
 rtC/m4yxpoHe8qT73/lkqLPsh3Y/TKx7NPrsHXegay4imo6GPXJZ4ochDEqZ08H3DOMU
 q+BkMksFGV8sJ8QQI5D2G4yYpN2CcqIFi8gs9JW5QJYk/lfteB7OUjuvh/nPwsLAoXgv
 B0eL6FErRzA5NwaIX8VI/2ANq6tyXReh0nEjB+6lavrhIp380IkwfOs0Xvc4B1nFMf9R
 BG9ZPj2h4RfY8cIFZ8mTe7V7uIR/36SJC2jrMT12iT2WO4I0PRsWxr2TDbNZ6FzKekuR
 SQiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/2yZeQfz4XOp0BFILcmniFZN2jYEF122j/LrdF+3/74=;
 b=BD2BLzfxZVAZ00UI3CT+xTJ4Ec3v3CHVeXu5NwdT8iHl9qKRPqrwKyGCI4N5u9uRVZ
 CbrhPSQ7/abpyOXEICinHEndGtxdlM3Nm008XlJKCSD6xipIBQ8JEGZao6l93eRxWv/Z
 z90fAQa0uujNyDPHKeq1iOjhDEia4hBXiarPMck8Vt2nEmKpeQUgZDuZmoUFRUICmSfC
 6vFgLN+RXRiEHy1M0TOploot3FD9N6VAo1PMtDRDu3Wi1iR55KeGh7Z9KZgRxxsNiT/s
 5okVR4Tu8pyjhDU7p5kK5vv16uhzFSYtyq/vQ4HKbv9Rh0kpVrvKF+CkG8LsrEQiG40D
 o0XQ==
X-Gm-Message-State: APjAAAUmkquhKeFDHoR5+MV3vRf6zldFDr4d9jdgjOsyxHdRaJVe0RvL
 X0HSDYVMWjk4yz6ai/wSFUKaiAFV6FsWLRZEENHMv+0Nd4O+eA==
X-Google-Smtp-Source: APXvYqwMq6v7P09xW+RHcEj6LhLL6WoBw3K/NCRXO8An9MklpXUQzi5oZMnSo2SB7FjdIAzJi50I5ziIgQMRNZ+r1P4=
X-Received: by 2002:a05:6000:351:: with SMTP id
 e17mr6634608wre.96.1572547348071; 
 Thu, 31 Oct 2019 11:42:28 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.DEB.2.21.9999.1910311101480.23683@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1910311101480.23683@viisi.sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 1 Nov 2019 00:12:17 +0530
Message-ID: <CAAhSdy3Y1W_8Uu00F66jVM=ObFouxw1C_z4-MVkLh0+s5Wx3HQ@mail.gmail.com>
Subject: Re: Experimental branch
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_114230_407006_EC3CDDDC 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Atish Patra <atish.patra@wdc.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Damien Le Moal <Damien.LeMoal@wdc.com>, Paolo Bonzini <pbonzini@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 11:41 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
>
> Hi,
>
> There is now an "experimental" branch on the RISC-V kernel git tree:
>
>   https://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git/log/?h=experimental
>
> This branch will contain patches that have been posted to the list which
> are getting close to being in shape, but which are not yet ready for
> merging.  It's an unstable branch, so don't base any patch submissions on
> it.  The intention is to make it easier for folks to see what's upcoming
> in the distant future, beyond what's been queued for submission to Linus.
> This branch will receive very little testing to start, but this will
> improve over time as our automated testing improves.
>
> Right now the experimental branch contains the following patches:
>
> - Steven Price's generic page table dumping code (not yet in mainline, but
>   looks close)
> - Zong Li's page table dumping code for RISC-V (based on Steven's generic
>   page table dumper patches)
> - Anup Patel's KVM patches (waiting for the hypervisor specification to
>   exit draft status, and for reviews and testing)

You can drop the KVM RISC-V patches from your experimental branch.

We are already maintaining KVM RISC-V patches (and dependent patches)
in the official KVM RISC-V gitrepo at: https://github.com/kvm-riscv/linux.git

All KVM RISC-V related work will go through above mentioned gitrepo
in-future. This gitrepo is co-maintained by me and Atish.

Regards,
Anup

>
> but we expect patch sets to be added and removed quite frequently.
>
>
> regards,
>
> - Paul
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
