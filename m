Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45BDC8BEB7
	for <lists+linux-riscv@lfdr.de>; Tue, 13 Aug 2019 18:36:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dbYBWpTzNvEnm6jTydJ92X3UOEYzktmmaLVYemCRgNM=; b=NJ67LbQQPmbauX
	o6sApnoW0t+l/1OEBH3ZgK23lkinGLIRB8rVwaneqC5Z7HZHmdY5fMD8DwAGBWEM1LvgcGQoW4EW2
	ntJzg47KfkFvWlFiOV6cBaKRorD3ElhKmUdil/9tJv5UyIAU9BOEtYHlOyCL71xdW75dkdIcn7iHZ
	6bA4GtGiHin6bDasyKjMq5+NY5/5bjqxFOKGIDo6FukSfJxNFjAJsI7IDXJ8LAnoSlr5tnkddtHLi
	7f8cEQaoUyBZY11cYQN9c+ysPZi+V/WdEeJ7/FcF/0v4B0twCwXeV4scIBcgyVLBt4PitKkgAFI1Z
	Xz+pjxXUxp25PK049ezw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxZmh-0006vA-Ij; Tue, 13 Aug 2019 16:36:31 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxZmb-0006tb-QU
 for linux-riscv@lists.infradead.org; Tue, 13 Aug 2019 16:36:27 +0000
Received: by mail-ot1-x343.google.com with SMTP id o101so21978702ota.8
 for <linux-riscv@lists.infradead.org>; Tue, 13 Aug 2019 09:36:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=nzIFZxpgTOrHzoDpd2G5FzNkubzvfPIuc6yEw8G7BmA=;
 b=YLDa8zTc0lMabSPfPnPyZ0Uq3MXBxFfVq3W0rnm9CWqtCfiW2j5ZXTMa0hhx0f5dG0
 tAbA1PReKM1FoAwACpzQNOm2MnAlGkElqIJ4E7j3s3GZoHCRdB6UDaOGqWKDoOzY3WHU
 FFKgiCFgMGfnCknHZNdOSo+bj0cIf5Vwr/YJxETPJiWpNlLp5obpYsLBLa5Wh71KPbbo
 0oONwPtr9V+Bs8gwwgDDMcW/ldmn9u3oHXPVYNt/kW29GR+pyxB5tVdOHWEXQNfeOv4f
 rskKnNXrn4ioZCqNTmSxy+vgzx66hSF67J996hy0YurGPzbUiDhwHvHuZWZ9n4JruGNG
 PkWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=nzIFZxpgTOrHzoDpd2G5FzNkubzvfPIuc6yEw8G7BmA=;
 b=fvoOQSOKY6QkFT+/w/eC9w48/oAvumyGrjTcLkJKqLZi4chowdZaQC4bG9n6IQ3gTU
 6PkJPQLj9K316RauqWYMmXn5iuR8Bk9vLsDtKP4kNBMAUlBvw0wUkrkpCpQsDUiDGf8+
 hcHKzNLIsup26QOP51VBP8KgcrJzVMeh572u/RqJprjxg9/eu+pYa8QJLywaHWfA8Ysp
 JBkBjVhHkrU0Pc8lx5IVdKL341lT7/vUUtg01PRR9RmDJkuBGOEGAT3l+EU2vJXc5RFx
 bja+SISBgwq2b7+VChHTRMAhuntXBxwiwZ9SFmDCDXAcLrVmmWaklODM7bSbuDKHqcER
 1Emg==
X-Gm-Message-State: APjAAAUohe2AGbKzJBlCIAac+irhvldZLXBlTXIasatYocbGPmH+VVvM
 +sskwbI28IkGW0d1e0Ndo+s0PhjV77I=
X-Google-Smtp-Source: APXvYqxWTCKcmwyOePhsYHxNukukVZ+TAhWXA9SlNdoFNlMhOQDzB0lG1yr09iXM57H+HscejKx/TA==
X-Received: by 2002:a5e:8e08:: with SMTP id a8mr7840104ion.94.1565714184761;
 Tue, 13 Aug 2019 09:36:24 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 p12sm2479550ioh.72.2019.08.13.09.36.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Aug 2019 09:36:24 -0700 (PDT)
Date: Tue, 13 Aug 2019 09:36:23 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 02/15] riscv: use CSR_SATP instead of the legacy sptbr
 name in switch_mm
In-Reply-To: <20190813154747.24256-3-hch@lst.de>
Message-ID: <alpine.DEB.2.21.9999.1908130935310.30024@viisi.sifive.com>
References: <20190813154747.24256-1-hch@lst.de>
 <20190813154747.24256-3-hch@lst.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_093625_896162_E4B10C9C 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Atish Patra <atish.patra@wdc.com>, Damien Le Moal <damien.lemoal@wdc.com>,
 Palmer Dabbelt <palmer@sifive.com>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 13 Aug 2019, Christoph Hellwig wrote:

> Switch to our own constant for the satp register instead of using
> the old name from a legacy version of the privileged spec.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Atish Patra <atish.patra@wdc.com>

Didn't you want us to replace this with Bin Meng's patch?

https://lore.kernel.org/linux-riscv/20190807151316.GB16432@infradead.org/

If so, probably best just to drop this one and state a dependency.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
