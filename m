Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD8728B86
	for <lists+linux-riscv@lfdr.de>; Thu, 23 May 2019 22:30:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OYrXwcoNAKNvLKx4ZltV3vw/70Bv3m6q5zlF3yfwXek=; b=odEPoKXDdaRGHJ
	a2pA9lf/FxGJLAlPj3kCeoiFpxtHqgL/HJfZ7IazC5m6ubQb9ncrVepo9OSBB5xIam40va6UfLNRe
	MxcSZNcm6Yz+fDNx1MUJ03NA4CqWsjnt+Ga51znJELB636jLxVYC2qEIPzl3xcZCw9/Tobino6/lR
	h9TW1xo+nqUtsR3cSJB16fQRVTQ5SHxXb//cEPHpKPRvRv3//F8tPwJpOQw2liSBNsmDmMcAcLGu+
	TzLd9bJ0zfVxszlhxm7yaCL+5CSoEfjcUqrTI5bL4IdVWUhram8C9j90LRsRA9SsmJiFvJ4a8y4Nn
	i5H6SBpifocvmHPqG1kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTuMM-0004tx-Sv; Thu, 23 May 2019 20:30:42 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTuMK-0004tF-01
 for linux-riscv@lists.infradead.org; Thu, 23 May 2019 20:30:41 +0000
Received: by mail-it1-x144.google.com with SMTP id h20so12080488itk.4
 for <linux-riscv@lists.infradead.org>; Thu, 23 May 2019 13:30:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=esXE7VyxJb6rAT63aVBp9x3aUrgExnflSSGBrK7zs30=;
 b=YPrDeiqYX+ljC715jVDoKLiKQ3PL6KXs/CvUm+UbwlILdY6vZ3OHIsSKN0qTKQaj1X
 rFPYBRjoGU2l1h7yDCCgFalBJ1XPQQBaC0KGq1lTlb68+0r/tSGDpKix1PPTagkPdO+7
 9Y5tU+fCJV+NPp+1KoPiPCuhz2Mwvf1SzMdp9YfGsqTnnHsclxG0B83a78oVVVOZE6rl
 BRGVIESfN45Ljb0vd2YbnopirBZfc325rrOSc007vvOc9ZhNXmkKEiEAbIbhnPmHqYyh
 qCW9Zq1f/rWUtGmvegjCxL571S+jqGsS2IWxDIYUkf4/+It7SUPvSsX+psqD9SRjAbwv
 zqzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=esXE7VyxJb6rAT63aVBp9x3aUrgExnflSSGBrK7zs30=;
 b=oAFjcZF6tZE4ROkWWXwxRLEtf3uS9sJu1F1Rdd6np5/SXPwDqvs7bjnxhkJoP7CpcB
 2lcR5KXYL7H/OIjHVbJ4HmmWgHEuQOOzLGhDFe15gpRl8F04ChnP9Bl9mr/PfCJ+wj9U
 svCfE6Zz0zveKHspt9JwJdi4u/zNT6vayfJKfMZGYWmH5pxCng1gcRx2fIqV5rRdRpfk
 Y+l9kB3I4AtME7P/3eZ9qe2PJn0pReKhDXEV8HlUgHXCJX43IbFiwxIRZ/3zgtWyxYeP
 FOy6PGDIM2KdqSX1/hMEFkTv1fH3xcGaDtlwfxrsIQbbcaRnh+3bhEyk8TA9V3Dv6v+G
 v4oA==
X-Gm-Message-State: APjAAAXMiXqIjcHEuuOYYE/T3TyVYdcQJ3HHng4jdkKSIUzP2FP2a3GZ
 50OPsqcwjVocp4IESiSC+Qun2w==
X-Google-Smtp-Source: APXvYqyC2di9u7e+938/0ozSEw7Wt/A9fDiowmUG/7iPQo5YGA0jt8SgX/qofm6gVoXsLvmtHl8kpg==
X-Received: by 2002:a24:a004:: with SMTP id o4mr14558440ite.167.1558643438897; 
 Thu, 23 May 2019 13:30:38 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 r3sm223692iom.30.2019.05.23.13.30.38
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 23 May 2019 13:30:38 -0700 (PDT)
Date: Thu, 23 May 2019 13:30:37 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Alan Mikhak <alan.mikhak@sifive.com>
Subject: Re: [PATCH 2/2] tools: PCI: Fix compiler warning in pcitest
In-Reply-To: <1558642464-9946-3-git-send-email-alan.mikhak@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1905231330010.31734@viisi.sifive.com>
References: <1558642464-9946-1-git-send-email-alan.mikhak@sifive.com>
 <1558642464-9946-3-git-send-email-alan.mikhak@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_133040_040893_9C6050BE 
X-CRM114-Status: UNSURE (   7.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: lorenzo.pieralisi@arm.com, linux-pci@vger.kernel.org, palmer@sifive.com,
 linux-kernel@vger.kernel.org, kishon@ti.com, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 23 May 2019, Alan Mikhak wrote:

> From: Alan Mikhak <alan.mikhak@sifive.com>
> 
> Fixes: fbca0b284bd0 ("tools: PCI: Add 'h' in optstring of getopt()")

Same comments here as on the other patch - please drop the From: line 
(since it's in the message header) and move the Fixes: line down with the 
Signed-off-by:.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
