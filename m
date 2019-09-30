Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2230EC19DD
	for <lists+linux-riscv@lfdr.de>; Mon, 30 Sep 2019 02:23:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xp7KjcB41jD0xdyxikIMjqUbvh2WzM3g+Ie1TSgcrPk=; b=aEXvuOgC6Keeag
	DqshgvFcxIE75E1LHY7kw3gmQBvqEQzv/4X/HX2s+gH3qJ5T7LBsdPbPxbxdY3xSZwDWLTk8IJ5Qv
	VjtzhTp+Kdpa72rHw/DlJmP/qBIW0FZeuITigjkhVTShuwOINXsj1O9PHtCNbJ7qG1Bhra0Wy3QBI
	H9mWQfGDDy5/pIHjuWvTtj0nhG+7qDx/4h0+VDkVLYF5Nrj6LooB3pmGpncv8aRz7WpHFuZi66fEe
	818gyMpDcg+dSMHzVTqhYB/lcsD3sGTz+p4eo+xfsKPiGAQeKAQ0GIqLMPtjhCWTIWw4g91sOuqK8
	JDG8TMOJbarhBSQQKkJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEjSl-0006Cx-Ji; Mon, 30 Sep 2019 00:22:51 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEjSi-0006CN-4b
 for linux-riscv@lists.infradead.org; Mon, 30 Sep 2019 00:22:49 +0000
Received: by mail-qk1-x741.google.com with SMTP id 4so6297617qki.6
 for <linux-riscv@lists.infradead.org>; Sun, 29 Sep 2019 17:22:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XGwdw6USM6fmVtOR4py7H/FTk388TMG/pxH4fNnR7YQ=;
 b=SMiW6Imf160HoDD7OIZxz/j458zUAz2dFCa0mZIo1gAP5XTsQDQxGtpiND94fDI04i
 q7K3c7Od4+9vl7y5Zr6hd7umOAAsr/vRsODisq1i7+sdLtSoXdgZG9GJOT5kF++ogH5Q
 SF4F9+RdVpYJDy3psGxNKEjz+bJMVJg6mxFCxA7fQ4L9JfGu1brjRfr425SUDcB6t+7/
 oMxxPZET7P2bPMeadtM3wVu9kc+Og4kNrHMPEFqVxDjtM+r5d48i2p39s4G+tGXMKxqY
 MBEYEusD/cnIk8g8RrwoouEGjH1bdVGVydg5m0p1WF4fD4GZPLBJO6iCGBKTf5xNm5nV
 br0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XGwdw6USM6fmVtOR4py7H/FTk388TMG/pxH4fNnR7YQ=;
 b=N+R94A+kE1HcN7yY3O61XqWNC3zVOX5BHisqMwkuQB6yU2aprmWBWcpLat/Ms3IDco
 LVpLWIDpXPmLfKwo2/zsgVrQGezohAi4dQ/YJR0+E44AnCGmsT4lFjz36DJEuF1WEwpe
 HM8Mf9215v9JF5ge65kP5MjPUEsnAjLld5auIMZ+VVNx0ELRZqWGavjIWhMrk6MnC7Pq
 8Xk4EQTCMUzzR+4x9omnhJ0dz6b+INEVohY857FmyNNzd+11qwkXTe/zZeCkx3osU2rC
 ZmK7MhhhLIU5pJiQ7EdkcshTDvSC5Rze9mQB8XnF2o+lj2Le3xnatcWSYohWg+ExlNNA
 oBTA==
X-Gm-Message-State: APjAAAXkKHFw2UISZYtG8PNy3UCXAgnH9m2JSPAjWs0Q69PWUdZbyScF
 YbKoJd1Q0W4XAVHLEGrAo1rW+QYV858RN7nE8HSZtw==
X-Google-Smtp-Source: APXvYqy3j8uNg+CUEJI8czs3s9DRTMDcdCN0bb3XNnLIQb0jeIVng5zqybz5yWzFCcY8NlU7y0u9BfZCOPRSu9kY7l0=
X-Received: by 2002:a37:a68e:: with SMTP id p136mr15969911qke.49.1569802962803; 
 Sun, 29 Sep 2019 17:22:42 -0700 (PDT)
MIME-Version: 1.0
References: <1569199517-5884-1-git-send-email-vincent.chen@sifive.com>
 <1569199517-5884-3-git-send-email-vincent.chen@sifive.com>
 <20190927225620.GA26970@infradead.org>
In-Reply-To: <20190927225620.GA26970@infradead.org>
From: Vincent Chen <vincent.chen@sifive.com>
Date: Mon, 30 Sep 2019 08:22:31 +0800
Message-ID: <CABvJ_xgqtY4YydhAtM3ap_Ods1DUHtRE4p3OZpD8_a7iRj+gzQ@mail.gmail.com>
Subject: Re: [PATCH 2/4] rsicv: avoid sending a SIGTRAP to a user thread
 trapped in WARN()
To: Christoph Hellwig <hch@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_172248_374105_4770DB0A 
X-CRM114-Status: UNSURE (   6.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, Sep 28, 2019 at 6:56 AM Christoph Hellwig <hch@infradead.org> wrote:
>
> Oh and s/rsicv/riscv/ in the subject, please.

Oh! Thank you for finding this typo.
I will correct it.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
