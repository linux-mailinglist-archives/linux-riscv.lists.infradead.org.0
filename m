Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1584A5F600
	for <lists+linux-riscv@lfdr.de>; Thu,  4 Jul 2019 11:51:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+w91gGU57QBCz+pLwrVwrj42NQGpMXIda+OTM/l7OBM=; b=cLaHtDHpJz4l7E
	tVhU+5X3JA+edmaqwOVi/+IAtcbWBzowsVSP/opKGrkzGthg8COX0xtJxdma9VfE0C+V0w7w39dBw
	j6c4dDN3Q8wsG36Wv1X5jzGJITDHWA1jVVoxYKIKJnBup8S+3P5VHomrQbz0iSCN+idW7IrFS4zeE
	d/23NtPZVnoDQp1OISHSqNvIZ2dHMoDjge+EH/z+0GlsKfWaqHvQ03TYslQ+wQBij9PSpSSHArEQP
	IfPBWzQKECuKLlbk2dqcjpW2S+JMDOwhzJqwJeCaudb41GnYxxUplZfUUvK+qw/Hggbh5MvHK8BO9
	ZVJcNkbX0e5rkqWTM1/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiyOm-0004xk-Gg; Thu, 04 Jul 2019 09:51:28 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiyOj-0004xN-Gf
 for linux-riscv@lists.infradead.org; Thu, 04 Jul 2019 09:51:26 +0000
Received: by mail-io1-xd41.google.com with SMTP id i10so11541912iol.13
 for <linux-riscv@lists.infradead.org>; Thu, 04 Jul 2019 02:51:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=jK9gE0EZFRAKA85EMrqzv23LtZatgfTFkfhTeM0RVdM=;
 b=Jt74L4ctNmm/4qaY23ldHySml5gai51+lvYGzmDZ9BR6pJxSHhlCoE2LTduWWIQcpv
 GTiOlFsHHk4p3EZSF/9iKmrxvoSUd9/1Ue5jIcDFNeTN4cjYhjU6XiS13xmtdep9EmKd
 HanAxsIc5CZKDBbp/Hl6XjWFHT3tzMyADCy/rYJaxjM42IhDiVRbRBi9xN5D2ZCFJY1n
 52fto8P9o96J65EIQP6zOURbPVaWnpT4S5Jf54ay7Neu5CQzDfLx9S0EelyLmP2qnXA8
 vv6Bd6JrUN6cVdlxZPpxV6yOOJ/T1xNW4GYmLoxJBPe0wl0GZ0+amWCGxsyEHo3oOqqp
 0duA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=jK9gE0EZFRAKA85EMrqzv23LtZatgfTFkfhTeM0RVdM=;
 b=H/tf88dYr/rP6DBw2+A+WA5TksTcKEm2gFdzqWNxar0Flt61pPTUdtjuFbP1IrmdgL
 2Q18QwerLGP3kAwSA7OzYYTllwuNKbVMtXsPpam5Ms5pDTb/Oth6Jbz9bgihmOjguw27
 +8GrWeO/rW1Yqo4L9p8F1ipVasO4PWxHSOTZvbiNFJjkF3pdKuxdPFfr1i2mxZrQuOjN
 binoG3tQUH9/3T4w6xIHr8eY3H8uHfe00iiILA43AaPfFjWyvH53MQFSGNjahnqXJAK9
 zxD5CMs93HNK8zibXEHQ7SSt/8zg6nUjb7BNR7uNojRA4/oX/cjVOSepLFLETfieiZ3V
 3O2g==
X-Gm-Message-State: APjAAAUfoytjUXbcokJ6QnqsPs88ojgwMUdCv09zmI5SevcdjP+zAIsU
 oICh0+bs3+e3hENRyXyCVlhEeg==
X-Google-Smtp-Source: APXvYqzTmFAHdlAqDPqN3ewdZSnJ9M+qclZeL6TNr99+6zTI3SKEW8+KOwBzd3jY6a1QFE0qLcgrBg==
X-Received: by 2002:a5d:904e:: with SMTP id v14mr41760716ioq.61.1562233884201; 
 Thu, 04 Jul 2019 02:51:24 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 w23sm8761915ioa.51.2019.07.04.02.51.23
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 04 Jul 2019 02:51:23 -0700 (PDT)
Date: Thu, 4 Jul 2019 02:51:23 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] riscv: remove free_initrd_mem
In-Reply-To: <20190520063326.26083-1-hch@lst.de>
Message-ID: <alpine.DEB.2.21.9999.1907040250370.24872@viisi.sifive.com>
References: <20190520063326.26083-1-hch@lst.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_025125_559639_8B52047C 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 20 May 2019, Christoph Hellwig wrote:

> The RISC-V free_initrd_mem is identical to the default one, except
> that it doesn't poison the freed memory.  Remove it so that the
> default implementations gets used instead.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Thanks Christoph, queued for v5.3 with Anup and Palmer's Reviewed-by:s.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
