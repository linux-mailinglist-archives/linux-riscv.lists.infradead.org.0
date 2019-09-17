Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D45EAB4A33
	for <lists+linux-riscv@lfdr.de>; Tue, 17 Sep 2019 11:18:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/CO59xFe27zjc74f/Fmpw652+Uv0e8PEAr8/hITPU8c=; b=Q74KxoWVJMqY9d
	k1+d/bV+bxwG8fAi6eZVK/iQkXJnZAZCp47mHj6XKBulsnUQ/PXoYYArr/GtXxY4f/Ik7y/ly/6zw
	k661HqE3IdPkYqgzvEpLDGZDve9xVnIOGc9+e7X2tbLSlhlgY5Mf232XYLxVf11xUjbRyaI87Zve1
	7z/OLzX+Kq6jua9eUcbovI7aL6mPJg3WjrKk+8NoIYgPDQwh4gcb7JPUtG4EtKMCMHC5/0PZiTXxl
	heVng5i66We4u2HBcSA+yv3aGlEeC2/REY7Cm/kR+JVI7OY3Ax8hI2ZFjpifpxs9l+KdK/TCm4gRI
	nMF9W19yxjpaV0C7X+gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA9cq-0005oY-Qn; Tue, 17 Sep 2019 09:18:20 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA9cl-0005oA-QA
 for linux-riscv@lists.infradead.org; Tue, 17 Sep 2019 09:18:17 +0000
Received: by mail-wr1-x443.google.com with SMTP id i1so2310071wro.4
 for <linux-riscv@lists.infradead.org>; Tue, 17 Sep 2019 02:18:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=ZmyRTH11FKZjg3p5bM7cG4+5udISP5256aWYiASckV4=;
 b=dHJuIjqRrMgYB6fmsR6dYurmuJBGEplDO2KM8mJBxvGK3M53S8DAFRSK5dQwECdgo0
 Gg2XAY0BNCAkaT/SxqegMe6rlZNrz9i6rFpfy2td6EfNmHUON7rzQkU/XovsjYJ90y+t
 K33DN9idOuOz2XnClLuxfxO38v7z8Im6sfNbjjKsVwPAwR1fnS5LVeIko7SxjXHIq7To
 4RWuwxLjux3xOfSZedVplKgwccufxiplMB1/w6XOwgDZtXsKOxNtYDoOn4L7uAF/gH38
 uXjC4ywXmgWtO77ZW45qC+KW/pWaepiGGlKxyoPYKN8gmJFbmPUmaBNo/nuwn2WUNtKr
 Ccug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=ZmyRTH11FKZjg3p5bM7cG4+5udISP5256aWYiASckV4=;
 b=tLgVtPd243Dwh5vBOJiSa2B5SVd0c/ffBzwiA9lzTwG4JxaMIVxd/2Fv8Jc6CPyxBp
 93jE1/jnx/fpg9gksUG03rMsawx62dANLD4acrRNJN675Uj5gJPpE+wpK4wuXWokADwR
 JpCM4tEUXEoXEC1216FiCgxKMiD8ML9fiIiNBmM5XadNgERc3fnfSrpj+lHFX/7hy33K
 td3Ve66lsR4EeQMtSrm9UvIuIRZAvssoUpxjaS9f0XuG5ssix/9fvuqq/KP3GwfRnhAS
 7vBN7UawGIUvUC8GmLp7sBcwN94q2GUeA2WarJPkIyzkvqJXz827GY9woUgurgTh0jxr
 WEew==
X-Gm-Message-State: APjAAAWnSu1uD96JRrM+LtqqQS+Y6Fe67TeRL4WOs6AVhRLLa5E+Kg5s
 me4wOKd90BolTiCd5pVaKzE/rg==
X-Google-Smtp-Source: APXvYqzMcsMkF+IzOhVUpVJstLoCK/jTQlsQSur1FiOv4mcOYSPoHSHQehqpCbl+eHk03Y8y2kTFOA==
X-Received: by 2002:a5d:5111:: with SMTP id s17mr2177174wrt.59.1568711894210; 
 Tue, 17 Sep 2019 02:18:14 -0700 (PDT)
Received: from localhost ([195.200.173.126])
 by smtp.gmail.com with ESMTPSA id 26sm1849272wmf.20.2019.09.17.02.18.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 02:18:13 -0700 (PDT)
Date: Tue, 17 Sep 2019 02:18:12 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Aurabindo Jayamohanan <mail@aurabindo.in>
Subject: Re: [PATCH] spi: sifive: check return value for
 platform_get_resource()
In-Reply-To: <20190917085627.4562-1-mail@aurabindo.in>
Message-ID: <alpine.DEB.2.21.9999.1909170216200.4260@viisi.sifive.com>
References: <20190917085627.4562-1-mail@aurabindo.in>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_021815_887981_50A71744 
X-CRM114-Status: UNSURE (   6.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: aurabindo.in]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv@lists.infradead.org, broonie@kernel.org, palmer@sifive.com,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 17 Sep 2019, Aurabindo Jayamohanan wrote:

> platform_get_resource() may return NULL. If it is so, return -ENXIO
> 
> Signed-off-by: Aurabindo Jayamohanan <mail@aurabindo.in>

Reviewed-by: Paul Walmsley <paul.walmsley@sifive.com>


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
