Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 376B3A0C7E
	for <lists+linux-riscv@lfdr.de>; Wed, 28 Aug 2019 23:38:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=67PVcpUsj/qvJY9lV+b9iZuspLtvpVskx1byle0rVQs=; b=f4voYGS0x/TM/p
	UOi1FoQq6m5qpGshx1gw+XVF48YJ6DnnqhbLRI46wsYWURiog9MuYtAkOV1kR+hiuE6vHfQPB2hte
	AuiPHfwFr06vVoBZBljuh+NTFqp8V9l7/B585AFWjI96ShJ8KNvxr5mX/7dlr8A/XNZUoZ0p6Ci0B
	sgoaKt8cDjVgtFBt32Wv7GbyHw+kGpQRXiLz+/iOhEeyJD38EcRN1ix1otmG3bk18izsHO0l1VDL6
	P0VLAs8BH1FUtnxzmYsXEL0gjXvtJGpcnD4XbwKtucqtGkkNJVjCfc/4pq2S+dmzGu0QKIjDHKRQu
	P6OJW0jzdCqsc3b5XNQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i35dw-0006EZ-30; Wed, 28 Aug 2019 21:38:16 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i35dt-0006ED-1C
 for linux-riscv@lists.infradead.org; Wed, 28 Aug 2019 21:38:14 +0000
Received: by mail-wr1-x442.google.com with SMTP id j16so1255141wrr.8
 for <linux-riscv@lists.infradead.org>; Wed, 28 Aug 2019 14:38:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sGjhjuh8luS+aqRBrfS7bHWA5KJ+QKi4i3rS6Cai6WY=;
 b=SiERiSw553Kaxk/tRLH5J9b4vOVe5PEhITDMHzFEy2/8RX+K5wXHNtNLCnw4SbRJDk
 JCCiIjdQLrIoZA/CfHjgVs42XEDgAWj4hn7afiVHrFw8LJtdpynYnsoxpBqKbSqTqfJd
 HNKWuEzo2ini90T5kpyxNSKb+8ForNyAOwc/MVmCzxKfCGPiRbo466ilnhXU68kB1bA3
 EhqYXDVTNeccNDqqIA7pYJlVX3RC/R8qfQnLNqoxVjSsXOio6D72LFOvsXoI14FflENV
 wapdyA8ef8PQbXzGRWwhRRf3ISJ1p8DISLOgSWn54ygagD1I+Y5zRELj7YNRL6Zba8BR
 qYwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sGjhjuh8luS+aqRBrfS7bHWA5KJ+QKi4i3rS6Cai6WY=;
 b=uPKat0lUWk2N8gBqwxM4Z1UaEr7P9EjcwBQpJqL3DRtJv+yGT+EHjTfqrDhKhigSuC
 SFJyW786kFoTzvwwiTZyZHwkNygiiJfwbmTwI13nSiYDANc9ksHqOJrnmfe6t6vENz2v
 O1STqAY1UGZ3lgzoavMJrnvcoo4XcxrjOvwGb51U7cuWYXWXW2w/Nm2ZZ5fazMDhq5Uv
 GKCmZWuSVCGzv0KFZXRIJL93nWswis39Lndl9yKOEsfgnIsNGbWopqd9CGRg07DghC/s
 bo2C8lx50zCQYbBjEvFGIGB/ZKx5e9e2CLSdkem5OvvRPmvz8yRmUu+YT3nFNaE6BgAq
 Vmhw==
X-Gm-Message-State: APjAAAU0auauKeN3uw7qiOqLV5udJA7U6XZ8NsuEbnoShVy+9m1Ia6dv
 I7hIrJAVDKBJ60KaPc3A1ZpX1TgXH2dJPTuGWiY=
X-Google-Smtp-Source: APXvYqy0U65XUAnttf145xEP+EHodRd9s98VxWubDUuMO7oGhPo6lBhmmd2Vbn44BFVHtYxXeHabTrxP5Dn2X0NcIS4=
X-Received: by 2002:a5d:51c6:: with SMTP id n6mr7299855wrv.206.1567028290871; 
 Wed, 28 Aug 2019 14:38:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190822205533.4877-1-david.abdurachmanov@sifive.com>
 <201908251451.73C6812E8@keescook>
In-Reply-To: <201908251451.73C6812E8@keescook>
From: David Abdurachmanov <david.abdurachmanov@gmail.com>
Date: Wed, 28 Aug 2019 14:37:34 -0700
Message-ID: <CAEn-LToB1atxDvehBanVaxg6sk8zDkMe_CbqeTVgKNzOvD9-Sw@mail.gmail.com>
Subject: Re: [PATCH v2] riscv: add support for SECCOMP and SECCOMP_FILTER
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_143813_074399_C1FAA3D5 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: fedoraproject.org]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: fedoraproject.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (david.abdurachmanov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Song Liu <songliubraving@fb.com>, Alan Kao <alankao@andestech.com>,
 Palmer Dabbelt <palmer@sifive.com>, Alexei Starovoitov <ast@kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, linux-kselftest@vger.kernel.org,
 linux-riscv@lists.infradead.org, Shuah Khan <shuah@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>,
 me@carlosedp.com, Albert Ou <aou@eecs.berkeley.edu>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>, Will Drewry <wad@chromium.org>,
 David Abdurachmanov <david.abdurachmanov@sifive.com>, netdev@vger.kernel.org,
 Anup Patel <Anup.Patel@wdc.com>, linux-kernel@vger.kernel.org,
 Andy Lutomirski <luto@amacapital.net>, Vincent Chen <vincentc@andestech.com>,
 bpf@vger.kernel.org, Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 10:36 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Thu, Aug 22, 2019 at 01:55:22PM -0700, David Abdurachmanov wrote:
> > This patch was extensively tested on Fedora/RISCV (applied by default on
> > top of 5.2-rc7 kernel for <2 months). The patch was also tested with 5.3-rc
> > on QEMU and SiFive Unleashed board.
>
> Oops, I see the mention of QEMU here. Where's the best place to find
> instructions on creating a qemu riscv image/environment?

Examples from what I personally use:
https://github.com/riscv/meta-riscv
https://fedoraproject.org/wiki/Architectures/RISC-V/Installing#Boot_with_libvirt
(might be outdated)

If you are running machine with a properly working libvirt/QEMU setup:

VIRTBUILDER_IMAGE=fedora-rawhide-developer-20190703n0
FIRMWARE=fw_payload-uboot-qemu-virt-smode.elf
wget https://dl.fedoraproject.org/pub/alt/risc-v/disk-images/fedora/rawhide/20190703.n.0/Developer/$FIRMWARE
echo riscv > /tmp/rootpw
virt-builder \
    --verbose \
    --source https://dl.fedoraproject.org/pub/alt/risc-v/repo/virt-builder-images/images/index
\
    --no-check-signature \
    --arch riscv64 \
    --size 10G \
    --format raw \
    --hostname fedora-riscv \
    -o disk \
    --root-password file:/tmp/rootpw \
    ${VIRTBUILDER_IMAGE}

sudo virt-install \
    --name fedora-riscv \
    --arch riscv64 \
    --vcpus 4 \
    --memory 3048 \
    --import \
    --disk path=$PWD/disk \
    --boot kernel=$PWD/${FIRMWARE} \
    --network network=default \
    --graphics none \
    --serial log.file=/tmp/fedora-riscv.serial.log \
    --noautoconsole

The following does incl. SECCOMP v2 patch on top of 5.2-rc7 kernel.

>
> > There is one failing kernel selftest: global.user_notification_signal
>
> This test has been fragile (and is not arch-specific), so as long as
> everything else is passing, I would call this patch ready to go. :)
>
> Reviewed-by: Kees Cook <keescook@chromium.org>
>
> --
> Kees Cook

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
