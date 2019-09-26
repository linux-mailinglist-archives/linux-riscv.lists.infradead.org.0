Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF9BBFAEE
	for <lists+linux-riscv@lfdr.de>; Thu, 26 Sep 2019 23:29:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=glipOqZ96dV+96eeeAFkssph0hcj0woHJveD0FpzCVg=; b=Ai/Mn4LYeZLwGD
	ftw+77ufE4+7Zgf6MqBTC/sYBNbioI97xGOkQM7mMFL+mstRCJLvc3A9g4kueqePAnRglnOy7SDhQ
	t5BhoCZ701mgPT3+Z8qChaaRTOTSZorHNKQnmSFXdyYuaj9YQHL0CZb48wSOMEFWRX8SNg4VuVeBq
	gRyMuEVIX6tb2bZq7jQfXzm569armhAwTsqx3Jdly3wxWqbjCuYfcR+j5b+byweOCyMhsvOmFsV9R
	WWCvhm6VfKJb45gMDe9OG9WWravygfuLwWvXnhL6lRXgraz70ss1K6x+KGiZSrL+8oIwvQgzEIjsl
	OYEhqtiDcokHRy5/dlYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDbKM-0001fb-3m; Thu, 26 Sep 2019 21:29:30 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDbKE-0001fG-SO
 for linux-riscv@lists.infradead.org; Thu, 26 Sep 2019 21:29:24 +0000
Received: by mail-ed1-x544.google.com with SMTP id c4so591494edl.0
 for <linux-riscv@lists.infradead.org>; Thu, 26 Sep 2019 14:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6XhbcEFMCrUOyRJ7vn2d6dQlPX6QvdKDh8uJ22uRPbM=;
 b=nbh0gee5ixe+jBwG+DzwSAU7539u93HYZVDedMx6/lpFPM9q0jBLeUSblHo+wGCNfa
 k9uPIzLRlJPY3YD+cKH5z98K4qltJ0lYcv20rd/MZx9CWsQUXA+n5puWsBV4iUUTkK+u
 VAavvjrnW1XFvfb6gY1kmmVljdsXAgzKLcNzbp5A+wYVlbkIjxEu5rzv1iTXYxxTS82k
 9BOhm83Pqg3ov/r0q1rf5o3uNQTYywxfTi9P+QkpCQeEO7q9ckb2F6zHwCNlbp4aVzNv
 ibQWQ7vEdEgtNtfzPbrY6AeqcO2ZH6AG/Nbg5hUYMbXWpAv+ocNJBZfk2b6IbU4uBo4E
 IPvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6XhbcEFMCrUOyRJ7vn2d6dQlPX6QvdKDh8uJ22uRPbM=;
 b=D8PJ3K0vVHOTF31tfQBqJYVY85f5OWRJwP322GsQEMPpi//C013v/alRTvWlLwtUrD
 hRMn6I8UAPR/spDUQB0vzRATJntGWJVfVxFlEf8SdrnaNMwreU61x89mOtO4dmeAMzXF
 ELVs8JCxPPM9l5o3l4FcqMc7Nf13T5PXdkBQ12zwe0haIFiPG1bohBLvVLNVX1vGJhgC
 ZDa/sIuYruRBR0XoT3WPY9pi/9qbofnkcjWm43AMUA0xHiTydnJkngD/q6ihfwwk6HVg
 BMipPVlvoLXcwmquldwr6dwzKZDmt1hkotZZYhwCak/McrZkeUez6xGOos4qqDw6AXkl
 DHvw==
X-Gm-Message-State: APjAAAXNgP6Zk8oyj+EC7qruX3Yu57qRWQqIwuiWY1z0681uQVQxfSNe
 tDde6HKqHLrYdqK9HWyfRoE=
X-Google-Smtp-Source: APXvYqzxCWAoS24MIqYFeCsqPCKwdoSlL8sQebKqzDTHXbIH/rD0R5WOG6vk60Jgc7PS9mqis3/5QA==
X-Received: by 2002:a50:a7e4:: with SMTP id i91mr1062570edc.9.1569533360887;
 Thu, 26 Sep 2019 14:29:20 -0700 (PDT)
Received: from desk.local ([2a02:a03f:4080:1900:5de2:f287:160f:22])
 by smtp.gmail.com with ESMTPSA id m1sm93083edq.83.2019.09.26.14.29.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 26 Sep 2019 14:29:20 -0700 (PDT)
Date: Thu, 26 Sep 2019 23:29:18 +0200
From: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH] riscv: resolve most warnings from sparse
Message-ID: <20190926212918.w2i6wigveopngtnm@desk.local>
References: <alpine.DEB.2.21.9999.1909190125400.13510@viisi.sifive.com>
 <20190919173142.GA26224@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190919173142.GA26224@infradead.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_142922_943720_3EC60BDA 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (luc.vanoostenryck[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Sep 19, 2019 at 10:31:42AM -0700, Christoph Hellwig wrote:
> On Thu, Sep 19, 2019 at 01:26:38AM -0700, Paul Walmsley wrote:
> > 
> > Resolve most of the warnings emitted by sparse.  The objective here is
> > to keep arch/riscv as clean as possible with regards to sparse warnings,
> > and to maintain this bar for subsequent patches.
> 
> I think this patch does just way to many different things and needs
> to be split up into one patch per issue / code module.
> 
> > --- /dev/null
> > +++ b/arch/riscv/include/asm/entry.h
> 
> For example adding this file should be a patch on its own.  It can
> also move to arch/riscv/kernel/ instead of polluting the <asm/*.h>
> namespace.  That being said I'm not sure I like this and the
> head.h patches.  Just adding a header for entry points used from
> aseembly only seems rather pointless, I wonder if there is a way
> to just shut up sparse on them.  Same for most of head.h.

The pseudo-specifier '__visible' (for __attribute__((__externally_visible__)))
is defined for this.

Best regards,
-- Luc Van Oostenryck

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
