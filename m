Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 301641165CA
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Dec 2019 05:25:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FjBJowwpo7B18Ub3dHkRzHZQJot1o+Yw+UkDlG9NzVw=; b=stEjRRnFXy1cDD+bRXw7Eh6FQ
	N/ixtZgJ3A145ixqsF8a4EnyTiIcB/raHNwFR1wPwV66GuMGMBgUNAsjqe3e6EEHfT6eBFzT7Xzwp
	6BtCmLe45MY4cE9LE/omMR2RxXPp1Cfinq7+Zrg7QPZWQQXYUD2/PKiJ8WRd8OA1cM2nmw2uuAb0o
	0by66AO4S9vpI5hMnRrrX52hSjwiiRZeYmtFXmu4Drr0DDDiczqXuZu2ZTFJEPqK78SpnDpXyPwEd
	WqIs15ElmC50CH8/Jue6aAfvp2rMMADkIZoNFRSi7A3jueWEr63c/aC+ptOVOvUZ3NAoNTrK5seK6
	t1gXbIgDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieAbM-0007kR-9Z; Mon, 09 Dec 2019 04:24:52 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieAbI-0007k1-LC
 for linux-riscv@lists.infradead.org; Mon, 09 Dec 2019 04:24:50 +0000
Received: by mail-pj1-x1041.google.com with SMTP id o11so5283855pjp.9
 for <linux-riscv@lists.infradead.org>; Sun, 08 Dec 2019 20:24:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=FjBJowwpo7B18Ub3dHkRzHZQJot1o+Yw+UkDlG9NzVw=;
 b=D1ibm2C7XTOofsRttdhpF11tP65by4t0pFUwmAoPmaDAx4VpEkL3NABBy15ET/yX5F
 IKzoajric3nimWNAwP8bzseUrk4siqyqtR6DMoyuDvcWfjctFjfdzo8/KatIVozJT199
 fD2jjNpeOTyrV3n7mPjMf6kC6bwo9JaumSFx4YF9c8UwW+DIwgXqAHbdpil2wTjqSFkY
 26nbf583knZvGaDkWtVMRhmNbcgoQNUbcwzGtpwFHQzBAhnSrXuP6UCVmY7lUgtJoWtM
 n4QLqOMc85w468yYOtF50HQIkYlKOPp+NGqwIIurT/aikeh0qWsmnIzORpH04JG6Rax3
 XfIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=FjBJowwpo7B18Ub3dHkRzHZQJot1o+Yw+UkDlG9NzVw=;
 b=XajttuAxFFRc2d069heczyCReXtIxZCQEU/mbdSx9XmEqCcHOhWdzjHjMphkwogXWd
 My7Ca730IQe4S+J3zEKzFa+E4rjgq7TPj1YWmZDPhGK8jugaCvFApCxoOEWSfGKUHInZ
 0VGri+ZklnvO+pYMf/5pRv5Qe95NEc3MNFOoCrKZWwOuvAik/3MWp4r/7mImhjnsLZAj
 rUjNSX0l4kK481/80d7D6SsNBKFOiEWjo9ZigLlBQS3oWvxNxu7MxkazuAK+SbhoXByz
 5CaD5zPzA2SZDeQCFePYI8h82fPPbGT9/UE6KjeJq2KEoFgquD3A8ZnPAhTsAUTHgWuN
 WtQQ==
X-Gm-Message-State: APjAAAWsQC4nffjFTXmmMWZI+0NxAJ4YwxM5TYjGoxZZgYIJ4NbQT/zt
 Ydd+on/MoPkHTqCElQBnbTfJcA==
X-Google-Smtp-Source: APXvYqzaA8A/mEmeA4tXov3YGFR32Fl6cONa/Q55/CrsoMaL4IAFFuQyCFNPHXA3QfJwDXRz2YD7Og==
X-Received: by 2002:a17:90a:c385:: with SMTP id
 h5mr29733384pjt.122.1575865487160; 
 Sun, 08 Dec 2019 20:24:47 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id e1sm25733094pfl.98.2019.12.08.20.24.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 Dec 2019 20:24:46 -0800 (PST)
Date: Sun, 8 Dec 2019 20:24:45 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Kefeng Wang <wangkefeng.wang@huawei.com>
Subject: Re: [PATCH] riscv: only select serial sifive if TTY is enabled
In-Reply-To: <b1f38e52-f34f-b867-bc18-1549333200e5@huawei.com>
Message-ID: <alpine.DEB.2.21.9999.1912082023330.298041@viisi.sifive.com>
References: <20191024072003.87116-1-wangkefeng.wang@huawei.com>
 <alpine.DEB.2.21.9999.1910240911590.20010@viisi.sifive.com>
 <b1f38e52-f34f-b867-bc18-1549333200e5@huawei.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_202448_822127_1156FDAC 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-riscv@lists.infradead.org, Palmer Dabbelt <palmer@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Kefeng Wang,

On Fri, 29 Nov 2019, Kefeng Wang wrote:

> On 2019/10/25 0:12, Paul Walmsley wrote:
> > On Thu, 24 Oct 2019, Kefeng Wang wrote:
> > 
> >> There is some warning if TTY is not enabled, and lead to
> >> build error, only select serial sifive if TTY enabled, and
> >> this also makes randconfig happy.
> >>
> >> Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
> > 
> > Thanks for doing these randconfig tests!  Queued for v5.4-rc.
> 
> Hi Paul, this patch is not in v5.4 :)

Sorry about that.  I've re-queued it for v5.5-rc.


- Paul

