Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC1A5D091
	for <lists+linux-riscv@lfdr.de>; Tue,  2 Jul 2019 15:25:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ahzRMDvSio1G7WkQQaSKkRpICz6I35GgsY+rFnOQ4kI=; b=J6GjYCLK9hTV0A
	acZnjRB+fs4nx4wiIBrxgVDKTgmxalOGI60pBKBgIrsatii5UvMHgqAF8fx4ZuaQ0h4smo80uC83X
	4w2XRlx563Z2Iye61tK5Z1i/oMAC8QinB2kIRjHPFwVWEWBBXR8BnQRf12MEKx5SlwjOnNbycpRav
	Ca+9ZeM6Lfh+te0TzQeQVhIh0C/b2mZp/p0mZjt57BhX4Ht6QLXVZPsfqAyDhzwIpu9GnSf+UNAnb
	6BYTPUXTi2ig885fsb1GsMyw8saSLNkX+niFqYr7XQbkzk1qwfjLNeEeqgrd2bM8r6cWtfrrKa8jK
	WS+x+LOniaTrcFpTYwFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiImW-0005pq-NT; Tue, 02 Jul 2019 13:25:12 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hiIle-0005Jj-HX; Tue, 02 Jul 2019 13:24:18 +0000
Date: Tue, 2 Jul 2019 06:24:18 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Alexandre Ghiti <alex@ghiti.fr>
Subject: Re: [PATCH v3 2/2] riscv: Introduce huge page support for 32/64bit
 kernel
Message-ID: <20190702132418.GB17480@infradead.org>
References: <20190701175900.4034-1-alex@ghiti.fr>
 <20190701175900.4034-3-alex@ghiti.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190701175900.4034-3-alex@ghiti.fr>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, "H . Peter Anvin" <hpa@zytor.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Hanjun Guo <guohanjun@huawei.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Mike Kravetz <mike.kravetz@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

> +config ARCH_WANT_GENERAL_HUGETLB
> +	def_bool y
> +
> +config SYS_SUPPORTS_HUGETLBFS
> +	def_bool y

In a perfect world these would be in mm/Kconfig and only selected
by the architectures.  But I don't want to force you to clean up all
that mess first, so:

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
