Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC905F73E
	for <lists+linux-riscv@lfdr.de>; Thu,  4 Jul 2019 13:35:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gKGyf29bF48jKhtf8whlzXhsLttJ8bFeh9kYYp4IXMc=; b=OG2eyUFjdTPDfW
	MsLVogf+F5teNUpzudZ3hs9Ay7ipaA2m0p2eNr/LJK2VtTkqUHbcCKjGx9+SQZq/Ocnw2y7RplZ8J
	FO1vKGJG6tASYH99VElEFVw6fI0rFQNEk/XVHjySTfwOnbRaEuK3Vpj4VmcXBMJ8KM7fLXdLKCHQa
	3K7H178g0pjn/L7FAcqfbwQ+6egrXMRBfl6HHiyGEtJY+Vp5f9/5pKgTtdF9M5eD7/9pOSMVlIneL
	tJSggoh/vNcRmqBVX+Ijt74tBFXQJIbsfZDnFI8fCAaNEZluuUg1vB4w3yUiEth/PH8FecIkVvADi
	/mY0WnWxqkbKq1AXc41Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj01Z-0003sc-9H; Thu, 04 Jul 2019 11:35:37 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj01P-0003rN-J6
 for linux-riscv@lists.infradead.org; Thu, 04 Jul 2019 11:35:30 +0000
Received: by mail-io1-xd41.google.com with SMTP id u19so12160164ior.9
 for <linux-riscv@lists.infradead.org>; Thu, 04 Jul 2019 04:35:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=3Jp4ssk/tg2iD8nW0ro2U7UKtJbPzstlWX8tfroZV5Q=;
 b=LtQddHxOwEM7iJpSljY6j4pPGJF2FOg4bbny538Cm89igIF6rP1CaCJh0lw9pagf4z
 r9PhETn5XbnST8Pd2jVKIJN++Q7a0Ioqbp0zLw/2RUXVMw2NWZxsVTt5LuQ9QjGiM8te
 Hci78N0siChPeIwHb2rGX7jWup+bvLk5qhM7TBcLViacr4HP+Qi6jNc97GHTfq+qDyuB
 xQBg5K1UOk9L0N9SnpUm0nEo2KBOiDqO8Cr7TBx3TiKpCWV6BeYD2D85rfFtMvHuvtNZ
 db2nO8Oc/CaDMG9I06sfJHT2fAaYlITMARosY1goa4ozJAG2/sizqb/XVAW9mOlxNui2
 POQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=3Jp4ssk/tg2iD8nW0ro2U7UKtJbPzstlWX8tfroZV5Q=;
 b=J2gS/2XBJDi9AarN9DkhV0FAHgsI/n3tSxl2kxWXL24l+C6v3B6jw97rmObIFwC9GA
 IkmeZKIkBWe51WLnBMCxVZ+/cNhjuPGAsYzZgQHUvdpNt9HpvVoQ01GCqfQsnBJQCvmg
 ynxITVZ7WJXKJTKKtMOdEYoyemxr97u70fa0h/iX+1JSYdlCrzc9UDY5M7b8+2CroUPW
 1J2IPEN6my1pTcHYUT9A9pO6EnFDJFO8LMJQ10yAhcVuKy1UAtB78UoNbhacmVvYuNvU
 5szZn3Y7LAqiw+J8XG1IVLlhD8p+4U0bGApQLRGQQr7g/ShfscwexdrPn8w2aUnEqo9/
 wXmQ==
X-Gm-Message-State: APjAAAU5l4asH9r9yk31yVObs2nnaHqY7obLpaxmhmEdCFWME5E+pE9z
 CAcfkx296TxVG7VCY/LHKcVZ5w==
X-Google-Smtp-Source: APXvYqynvovPh8WYFyY8sEb0/88FT+bBN0Il6kgEz6q0BL4v6jisjzQGkuUtgxSYQzDmiQeF+0rmbg==
X-Received: by 2002:a6b:dd17:: with SMTP id f23mr4103381ioc.213.1562240124009; 
 Thu, 04 Jul 2019 04:35:24 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 i3sm3931703ion.9.2019.07.04.04.35.23
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 04 Jul 2019 04:35:23 -0700 (PDT)
Date: Thu, 4 Jul 2019 04:35:23 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Alexandre Ghiti <alex@ghiti.fr>
Subject: Re: [PATCH v3 0/2] Hugetlbfs support for riscv
In-Reply-To: <c06441fd-0022-8fb9-36b0-2f5d956c3ed5@ghiti.fr>
Message-ID: <alpine.DEB.2.21.9999.1907040429170.24872@viisi.sifive.com>
References: <20190701175900.4034-1-alex@ghiti.fr>
 <alpine.DEB.2.21.9999.1907031344330.10620@viisi.sifive.com>
 <c06441fd-0022-8fb9-36b0-2f5d956c3ed5@ghiti.fr>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_043527_880631_04E09C8A 
X-CRM114-Status: GOOD (  16.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Hanjun Guo <guohanjun@huawei.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "H . Peter Anvin" <hpa@zytor.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Mike Kravetz <mike.kravetz@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 4 Jul 2019, Alexandre Ghiti wrote:

> On 7/4/19 12:57 AM, Paul Walmsley wrote:
> > On Mon, 1 Jul 2019, Alexandre Ghiti wrote:
> > 
> > > - libhugetlbfs testsuite on riscv64/2M:
> > >    - brk_near_huge triggers an assert in malloc.c, does not on x86.
> > I was able to reproduce the 2MB megapages test results on rv64 QEMU.  On a
> > HiFive Unleashed, though, a few more tests fail:

[ ... ]

> > - One of the heapshrink tests fails ("Heap did not shrink")
> > 
> >    # LD_PRELOAD="obj64/libhugetlbfs_privutils.so obj64/libhugetlbfs.so
> > tests/obj64/libheapshrink.so" HUGETLB_MORECORE_SHRINK=yes
> > HUGETLB_MORECORE=yes tests/obj64/heapshrink
> >    Starting testcase "tests/obj64/heapshrink", pid 753
> >    FAIL    Heap did not shrink
> >    #
> > 
> > Some of these may be related to the top-down mmap work, but there might be
> > more work to do on actual hardware.
> 
> 
> I don't think this is related to top-down mmap layout, this test only 
> mmaps a huge page. It might be interesting to see more verbose messages 
> adding HUGETLB_VERBOSE=99 when launching the test.

Here is the HUGETLB_VERBOSE=99 output from the above heapshrink test on an 
FU540:

libhugetlbfs [(none):86]: INFO: Found pagesize 2048 kB
libhugetlbfs [(none):86]: INFO: Parsed kernel version: [5] . [2] . [0]  [pre-release: 6]
libhugetlbfs [(none):86]: INFO: Feature private_reservations is present in this kernel
libhugetlbfs [(none):86]: INFO: Feature noreserve_safe is present in this kernel
libhugetlbfs [(none):86]: INFO: Feature map_hugetlb is present in this kernel
libhugetlbfs [(none):86]: INFO: Kernel has MAP_PRIVATE reservations.  Disabling heap prefaulting.
libhugetlbfs [(none):86]: INFO: Kernel supports MAP_HUGETLB
libhugetlbfs [(none):86]: INFO: HUGETLB_SHARE=0, sharing disabled
libhugetlbfs [(none):86]: INFO: HUGETLB_NO_RESERVE=no, reservations enabled
libhugetlbfs [(none):86]: INFO: No segments were appropriate for remapping
libhugetlbfs [(none):86]: INFO: setup_morecore(): heapaddr = 0x2aaac00000
libhugetlbfs [(none):86]: INFO: hugetlbfs_morecore(1052672) = ...
libhugetlbfs [(none):86]: INFO: heapbase = 0x2aaac00000, heaptop = 0x2aaac00000, mapsize = 0, delta=1052672
libhugetlbfs [(none):86]: INFO: Attempting to map 2097152 bytes
libhugetlbfs [(none):86]: INFO: ... = 0x2aaac00000
libhugetlbfs [(none):86]: INFO: hugetlbfs_morecore(0) = ...
libhugetlbfs [(none):86]: INFO: heapbase = 0x2aaac00000, heaptop = 0x2aaad01000, mapsize = 200000, delta=-1044480
libhugetlbfs [(none):86]: INFO: ... = 0x2aaad01000
Starting testcase "tests/obj64/heapshrink", pid 86
libhugetlbfs [(none):86]: INFO: hugetlbfs_morecore(33558528) = ...
libhugetlbfs [(none):86]: INFO: heapbase = 0x2aaac00000, heaptop = 0x2aaad01000, mapsize = 200000, delta=32514048
libhugetlbfs [(none):86]: INFO: Attempting to map 33554432 bytes
libhugetlbfs [(none):86]: INFO: ... = 0x2aaad01000
FAIL    Heap did not shrink


This is with this hugepage configuration:

# /usr/local/bin/hugeadm --pool-list
      Size  Minimum  Current  Maximum  Default
   2097152       64       64       64        *
#


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
