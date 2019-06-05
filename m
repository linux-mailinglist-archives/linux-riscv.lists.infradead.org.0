Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39A8535556
	for <lists+linux-riscv@lfdr.de>; Wed,  5 Jun 2019 04:38:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DuxbbTYjgur/pBnOV13p6oHwNCN3Swsg1apzknnggCU=; b=U2so5lBzgQjMTk
	/+OqDfW3k+9zcSevFgi74TZSCa0n8AJltoWEj1+IDFI94A+RW/xt115+SY19SNZ57vYjPg+QgzK9G
	4fAZsZHrGpdUboZIz+Fs+XaSF4Ex/H8CFaxM5IHV5W0gYpku6xWs+VLG3zPP0tsNn9DTqkZbFviK1
	68pkN6asj9mOGNPIImmxTEfCjSPdaOS2RTRWHgVM13LJD4+QrqYwcMiJyqyOzX9usH3LswCRs0LNY
	dbF5cB0sirrFp3gpb1Vc2+giENNVtM7iYsEvL4kkv8c/+I6yV5mb8JkRMjZbmDsYR2tKd6M5oWhT4
	ivqT4qefSRKD//U5rwmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYLop-000713-V1; Wed, 05 Jun 2019 02:38:27 +0000
Received: from conssluserg-06.nifty.com ([210.131.2.91])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYLol-00070N-Fw; Wed, 05 Jun 2019 02:38:25 +0000
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com
 [209.85.217.45]) (authenticated)
 by conssluserg-06.nifty.com with ESMTP id x552bwNi015623;
 Wed, 5 Jun 2019 11:37:59 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com x552bwNi015623
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1559702279;
 bh=rlXG4KafJ48SszDXPb9veQ1mChqnZopGbbSbM2AtzLc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=reRoC3LCODW2GBXW/hPCv4S/B7CVl9c+nRtJ4VY8VY6hzI24tWZrUHkGNWz420Nxm
 kA5XCPbqM+OcfHVU2VJwzQuuBHYJqAn1wVeQ72k4q/3g1jhzo46RQXCg/ukFh2Dox7
 LR1uj6rky7CyY6u4WR0us9bTjJZgclXEUPQxSVVG70hHPG2k8nOGylY2MysCZiL0iG
 YqMskldpLSmjYFpHCr5Tkh2Ifh48QY8xmg7TBMBkEF8jxDxwwerKaY9jc0GYh1EpfR
 eGmZCZ4253i7cIrBZj1Z1utua3uwfrvPlahSg5FCD/jXViNq2pL+e8DeNYjaabxd3l
 fbTOkdui/IHVw==
X-Nifty-SrcIP: [209.85.217.45]
Received: by mail-vs1-f45.google.com with SMTP id m8so5755063vsj.0;
 Tue, 04 Jun 2019 19:37:59 -0700 (PDT)
X-Gm-Message-State: APjAAAUYCVA6O4dpOYSorFgX7eqTu6HmtAOxc6aUc3iYk/gpDmYAeoNt
 WrSEWJvYGCb8IRDkD4y6E1oxaMdwaXpaaJOXS6g=
X-Google-Smtp-Source: APXvYqzyi/PN7usug5PnObKBoqJxKJtYCUFINZdd71aBKnjEu2CMU8+EOU/sdcKVYceeBvsBUi01Xqmwcp/M7j6Sefg=
X-Received: by 2002:a67:f495:: with SMTP id o21mr3047792vsn.54.1559702278042; 
 Tue, 04 Jun 2019 19:37:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190604101409.2078-1-yamada.masahiro@socionext.com>
In-Reply-To: <20190604101409.2078-1-yamada.masahiro@socionext.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 5 Jun 2019 11:37:21 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQ50Lnz+1hjHg2PK_h7DyfNkY7D1XGL5_VPDe5xLgx2Kw@mail.gmail.com>
Message-ID: <CAK7LNAQ50Lnz+1hjHg2PK_h7DyfNkY7D1XGL5_VPDe5xLgx2Kw@mail.gmail.com>
Subject: Re: [PATCH 00/15] kbuild: refactor headers_install and support
 compile-test of UAPI headers
To: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_193823_762405_BCB950DD 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.91 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Song Liu <songliubraving@fb.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Palmer Dabbelt <palmer@sifive.com>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 Alexei Starovoitov <ast@kernel.org>, David Howells <dhowells@redhat.com>,
 Paul Mackerras <paulus@samba.org>, linux-riscv@lists.infradead.org,
 Vincent Chen <deanbo422@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 linux-s390 <linux-s390@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Daniel Borkmann <daniel@iogearbox.net>, Jonathan Corbet <corbet@lwn.net>,
 Michael Ellerman <mpe@ellerman.id.au>, Helge Deller <deller@gmx.de>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Yonghong Song <yhs@fb.com>,
 arcml <linux-snps-arc@lists.infradead.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Vasily Gorbik <gor@linux.ibm.com>, Jani Nikula <jani.nikula@intel.com>,
 Greentime Hu <green.hu@gmail.com>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Michal Marek <michal.lkml@markovi.net>, linux-parisc@vger.kernel.org,
 Vineet Gupta <vgupta@synopsys.com>, Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Networking <netdev@vger.kernel.org>, bpf@vger.kernel.org,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Jun 4, 2019 at 7:15 PM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
>
> Multiple people have suggested to compile-test UAPI headers.
>
> Currently, Kbuild provides simple sanity checks by headers_check
> but they are not enough to catch bugs.
>
> The most recent patch I know is David Howells' work:
> https://patchwork.kernel.org/patch/10590203/
>
> I agree that we need better tests for UAPI headers,
> but I want to integrate it in a clean way.
>
> The idea that has been in my mind is to compile each header
> to make sure the selfcontainedness.


For convenience, I pushed this series at

git://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git
uapi-header-test-v1

(13/15 was replaced with v2)


If you want to test it quickly, please check-out it, then

  $ make -j8 allmodconfig usr/

(As I noted in the commit log, you need to use
a compiler that provides <stdlib.h>, <sys/time.h>, etc.)


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
