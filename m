Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C81107F63
	for <lists+linux-riscv@lfdr.de>; Sat, 23 Nov 2019 17:39:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DHisDYji/x9eP3o5xRHnWRFKGINsecljWUf1lhlLJMc=; b=HK3xNflIDto/On
	oxNa1RXRhyTi1YbSdomtJyJoLGGeJpG3HV021sRCj+tBal4neyR9hBBqWERlJrEdfYoSW/eZNtQkV
	vpM5dzj1za+qH00Jv+9v1HYfWOFcecfL1diXglHXRsuA06tPXgJFsO9b6Ta9jOgGg8mEPzEfxVClx
	X18h9Wo5xs4xRxgfM/Jb3HbuqTGXbqBHMR/y0rpNlYXYMp12HLJ7f9kP6JwlP0KvZfKFD9tBcvUqQ
	DG5rOH3oprkJG584ThAhxAw9hM5jVmJrCFzXY1n1M4fJEMwJ7Zg/e3QZlMgxTImhOiO0tNtWf9BJg
	ktCqLw5qe6ITLNVXTkYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYYRX-0004gW-Hq; Sat, 23 Nov 2019 16:39:31 +0000
Received: from ms.lwn.net ([45.79.88.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYYRV-0004fq-14
 for linux-riscv@lists.infradead.org; Sat, 23 Nov 2019 16:39:30 +0000
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id D99A0867;
 Sat, 23 Nov 2019 16:39:25 +0000 (UTC)
Date: Sat, 23 Nov 2019 09:39:24 -0700
From: Jonathan Corbet <corbet@lwn.net>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH] Documentation: riscv: add patch acceptance guidelines
Message-ID: <20191123092552.1438bc95@lwn.net>
In-Reply-To: <alpine.DEB.2.21.9999.1911221842200.14532@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1911221842200.14532@viisi.sifive.com>
Organization: LWN.net
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_083929_080217_4A4CDAF5 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: krste@berkeley.edu, aou@eecs.berkeley.edu, waterman@eecs.berkeley.edu,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, palmer@dabbelt.com,
 linux-riscv@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 22 Nov 2019 18:44:39 -0800 (PST)
Paul Walmsley <paul.walmsley@sifive.com> wrote:

> Formalize, in kernel documentation, the patch acceptance policy for 
> arch/riscv.  In summary, it states that as maintainers, we plan to only 
> accept patches for new modules or extensions that have been frozen or 
> ratified by the RISC-V Foundation.
> 
> We've been following these guidelines for the past few months.  In the
> meantime, we've received quite a bit of feedback that it would be
> helpful to have these guidelines formally documented.

If at all possible, I would really love to have this be part of the
maintainer profile documentation:

	https://lwn.net/ml/linux-kernel/156821692280.2951081.18036584954940423225.stgit@dwillia2-desk3.amr.corp.intel.com/

...if we could only (hint...CC'd...) get Dan to resubmit it with the
needed tweaks so it could be merged...

Thanks,

jon

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
