Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C9F73521
	for <lists+linux-riscv@lfdr.de>; Wed, 24 Jul 2019 19:20:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wAtxVmIQ8zu5zq+efXFz1aQKyNEaIsAttQn7dKwYTVc=; b=NEDM0qXMD+OKUy
	Axl47XXc1DnlCjx22JsEUs/ERY5t7cy/uRLr1ui4PG0FwYoenoakU9MrUlHkLbCxA4Gy3Yyt9aMn7
	OAHHHulMnxBjND94Qec2yrOxz4j00lQezf3wx+s/GalJESMacTKnaajGklGO8W55sdBf+c6wCaoy9
	0pclZ0n6qSR9SJAyucjKdK2PR6EsSmx6zXDENE62hKjnKwsWDNKMmcl2QF0B/Rn7kWGNtwSYizrIT
	Klqui/bde7aDsjMy45C4Ph2b5a3/r8RYmC0w2H2WtEzhmTltig3YZOKtXEAuTUAKlcl6UNkTfP8pu
	DbgpxSOpC5pRqAm0fWyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqKvq-0000NI-G3; Wed, 24 Jul 2019 17:20:02 +0000
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqKtf-0004fE-N0; Wed, 24 Jul 2019 17:17:49 +0000
Received: by mail-pf1-f194.google.com with SMTP id f17so17279746pfn.6;
 Wed, 24 Jul 2019 10:17:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=v5o93rppXWOEe1khDbdKPwUWVhMWimUKdS1T4a7dv9A=;
 b=aDF2aR/oyueKRc+Tnork9U+DUHlWIiUIlWEtVBN+yw/hOCurwy+Bsq94ItAn34W+jX
 VYRjZTvANJKCds0W4YEZTQU0P5ufLnzpLtLo2a2Q69U1EQn/qrnTvLDltwCeuUtQ6Cdb
 5NJb4dnp8mT/9iuPvt7rQMCE6EHhTxFcdOVz2bYUVPl6jGn48UWA4PLirFmgrQWDx/4K
 x723Wvay55ZWo+P+Vl7ONVyUc51ji2mu0M+AXrNeSCnwzEul4xsG36iq4uN5qvFFM4m/
 TDCVDGKZlEp2e+RCa1/HcxMpbt38CnugCmWoVDQ1JPa/H5H6IBcKrKz5PICzFyVA7eK9
 Jtxw==
X-Gm-Message-State: APjAAAXNmrE7RmzDz1QvmMwONsIxMevFTJ3iNoLJn1T5UbjRCUSUbo1l
 VEcBKcFvltfN4yc+kn1uouk=
X-Google-Smtp-Source: APXvYqz8XfN6M40/6fe7BxMTCZJQCCPcbWguJPVyb/SH7u8lYYU33WfbbFpre78nAUrnVv5x6QkoeQ==
X-Received: by 2002:a17:90a:bd93:: with SMTP id
 z19mr89794097pjr.49.1563988666568; 
 Wed, 24 Jul 2019 10:17:46 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id t10sm46821994pjr.13.2019.07.24.10.17.45
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 10:17:45 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 1E29A402A1; Wed, 24 Jul 2019 17:17:45 +0000 (UTC)
Date: Wed, 24 Jul 2019 17:17:45 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Alexandre Ghiti <alex@ghiti.fr>
Subject: Re: [PATCH REBASE v4 00/14] Provide generic top-down mmap layout
 functions
Message-ID: <20190724171745.GX19023@42.do-not-panic.com>
References: <20190724055850.6232-1-alex@ghiti.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724055850.6232-1-alex@ghiti.fr>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_101748_110262_13DC7588 
X-CRM114-Status: UNSURE (   7.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mcgrof[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Russell King <linux@armlinux.org.uk>,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Paul Burton <paul.burton@mips.com>,
 linux-riscv@lists.infradead.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 James Hogan <jhogan@kernel.org>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linux-mips@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Other than the two comments:

Reviewed-by: Luis Chamberlain <mcgrof@kernel.org>

  Luis

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
