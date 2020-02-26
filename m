Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCAC017032C
	for <lists+linux-riscv@lfdr.de>; Wed, 26 Feb 2020 16:52:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Mime-Version:Content-Type:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4GYwlf0Xa2QHt1cHVU8f4uTPVQEe66S6tW8iKIjB1EY=; b=IbJ24XZjOujnm1
	7SYbiu4Gay4WkTgC8HidJapXZMOy2K9WHQ61/pbmWskp4/eWgz62XxsJaIzmnqaiR88uMrPCrd2cf
	4uP9Ii1ceGdF7rdcd1yyj8HhT82G5MeIW/I3KgSBhkQ7+XFUsBgsnKRALa20WesnioxcA+RJVvCvo
	dVv+RhNz0LCTRJ1A0exbxDhPjEcJyhR9uBfXVkVdq7oQS3gbnp6Ynlr9XtlAWykS+7bYCYqLm409F
	gHtznhhCnW3tNNvCbAoT3rqsthS87l1vsXluYQnjAjyWdclK9NYFvhKkEGNB5Gt62lhcktB+2DLsx
	Xpy/1+470nKuUx4V3qlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6yz0-00069J-0W; Wed, 26 Feb 2020 15:52:22 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6yyl-0005ya-3K
 for linux-riscv@lists.infradead.org; Wed, 26 Feb 2020 15:52:08 +0000
Received: by mail-qk1-x741.google.com with SMTP id 11so3093951qkd.1
 for <linux-riscv@lists.infradead.org>; Wed, 26 Feb 2020 07:52:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4GYwlf0Xa2QHt1cHVU8f4uTPVQEe66S6tW8iKIjB1EY=;
 b=PEkBC2gGo9Wp0CTNFzcX/uGLGqh45la2h+234pEbgb0JKCTWiVwR5CK2qWd8o7GV9+
 vZ0V3mJmWDxwpkokIiWuE2AK5D0JvSuKri12uT1Y5ZmnM2+2x1lk6TfjQrITZNEH8kqT
 OpLenMqGsrmR+s2Jh+PZTctbpw7UkSpOJj3m46DAs7sTe9V+A8PrxIZxTU0Jx2ozkU+h
 l2FfR5Vf/ZZGO7KqofRi3aS6TzSV2SHQoTpS42nUl+B16nz+oN/qYJaqXNzKW0WQZswg
 b+O0gHwTc4Y9Ju+CjJy1uD3JRDYV9kySWYvBERLoM4RJvQwJnkBJANxBmrBhZlFtAjqz
 NmYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4GYwlf0Xa2QHt1cHVU8f4uTPVQEe66S6tW8iKIjB1EY=;
 b=FnUNtoBu89ZPok5QxHiXGyfcnhCEbcjoaSMe3kg7Uo7Sq5Ccin30bdGLmb81Y9ulpD
 jLfL99kE/hh9dnYqvaMt5fxdjnaDQQV5nse11FH3c67dTg91DnAPk5L0E1lGXgdgpAfk
 D6gqQ0kHm2K4PpOdE4pdLdrAXTQK+S2Ua+rJcLGCff/4sMvQzCCsKo59O7zVHGy4SnW9
 XbVxu00hWlK8upSGMMM7dwk8d2cPcTUFQjIpD6p6xDFWNZXiGz6pm6briwWhxDL87J5Z
 GdsRIWFbvmRmJn+bk43/rbnPo+neqcGGZv06ZgdEuZ54iFmUN4bOrlrPMeocSjP5m9S1
 fwaw==
X-Gm-Message-State: APjAAAUXhQi1Dn/RYCUjRJiOSqjUmDRrS/wN5gxnRNGGPSrckRdkrw9g
 MYZMfJsQ9vJplH9Wdv4ozD8JGw==
X-Google-Smtp-Source: APXvYqxycYwltSMF6mRZHm7TjXsCzQqI/GC2y1t3waZQf56agLdqkPAjaYu5yvSrjxUQYf0tQtgA0w==
X-Received: by 2002:a37:64cb:: with SMTP id y194mr5808427qkb.364.1582732321799; 
 Wed, 26 Feb 2020 07:52:01 -0800 (PST)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id 3sm1332599qte.59.2020.02.26.07.51.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Feb 2020 07:52:01 -0800 (PST)
Message-ID: <1582732318.7365.129.camel@lca.pw>
Subject: Re: [PATCH V14] mm/debug: Add tests validating architecture page
 table helpers
From: Qian Cai <cai@lca.pw>
To: Christophe Leroy <christophe.leroy@c-s.fr>, Anshuman Khandual
 <anshuman.khandual@arm.com>, linux-mm@kvack.org
Date: Wed, 26 Feb 2020 10:51:58 -0500
In-Reply-To: <7c707b7f-ce3d-993b-8042-44fdc1ed28bf@c-s.fr>
References: <1581909460-19148-1-git-send-email-anshuman.khandual@arm.com>
 <1582726182.7365.123.camel@lca.pw>
 <7c707b7f-ce3d-993b-8042-44fdc1ed28bf@c-s.fr>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7) 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_075207_175374_DC7BBBDF 
X-CRM114-Status: GOOD (  18.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 linux-snps-arc@lists.infradead.org, Vasily Gorbik <gor@linux.ibm.com>,
 Borislav Petkov <bp@alien8.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Vineet Gupta <vgupta@synopsys.com>, linux-kernel@vger.kernel.org,
 Palmer Dabbelt <palmer@dabbelt.com>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 2020-02-26 at 15:45 +0100, Christophe Leroy wrote:
> 
> Le 26/02/2020 à 15:09, Qian Cai a écrit :
> > On Mon, 2020-02-17 at 08:47 +0530, Anshuman Khandual wrote:
> > > This adds tests which will validate architecture page table helpers and
> > > other accessors in their compliance with expected generic MM semantics.
> > > This will help various architectures in validating changes to existing
> > > page table helpers or addition of new ones.
> > > 
> > > This test covers basic page table entry transformations including but not
> > > limited to old, young, dirty, clean, write, write protect etc at various
> > > level along with populating intermediate entries with next page table page
> > > and validating them.
> > > 
> > > Test page table pages are allocated from system memory with required size
> > > and alignments. The mapped pfns at page table levels are derived from a
> > > real pfn representing a valid kernel text symbol. This test gets called
> > > inside kernel_init() right after async_synchronize_full().
> > > 
> > > This test gets built and run when CONFIG_DEBUG_VM_PGTABLE is selected. Any
> > > architecture, which is willing to subscribe this test will need to select
> > > ARCH_HAS_DEBUG_VM_PGTABLE. For now this is limited to arc, arm64, x86, s390
> > > and ppc32 platforms where the test is known to build and run successfully.
> > > Going forward, other architectures too can subscribe the test after fixing
> > > any build or runtime problems with their page table helpers. Meanwhile for
> > > better platform coverage, the test can also be enabled with CONFIG_EXPERT
> > > even without ARCH_HAS_DEBUG_VM_PGTABLE.
> > > 
> > > Folks interested in making sure that a given platform's page table helpers
> > > conform to expected generic MM semantics should enable the above config
> > > which will just trigger this test during boot. Any non conformity here will
> > > be reported as an warning which would need to be fixed. This test will help
> > > catch any changes to the agreed upon semantics expected from generic MM and
> > > enable platforms to accommodate it thereafter.
> > 
> > How useful is this that straightly crash the powerpc?
> > 
> > [   23.263425][    T1] debug_vm_pgtable: debug_vm_pgtable: Validating
> > architecture page table helpers
> > [   23.263625][    T1] ------------[ cut here ]------------
> > [   23.263649][    T1] kernel BUG at arch/powerpc/mm/pgtable.c:274!
> 
> The problem on PPC64 is known and has to be investigated and fixed.

It might be interesting to hear what powerpc64 maintainers would say about it
and if it is actually worth "fixing" in the arch code, but that BUG_ON() was
there since 2009 and had not been exposed until this patch comes alone?

