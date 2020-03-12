Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C767118392A
	for <lists+linux-riscv@lfdr.de>; Thu, 12 Mar 2020 20:03:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CcAKyStScOON5qpzqj5TUiGNnuh9vk4Y01m4kaTEnkI=; b=o6C9zEh8PXPZdkvzjYE3roOzB
	8NXMIn1+sxMpYVK5PzHKA1DR7+yxfpOvJAy2kNRfugj8heY9WuMoluVnsSNo/nTriiEP2dzRFru26
	sdqs7zye0wf5YLfsXe6lANSA0UAKcOnHzjIZExF+22aqmDMwnT7JnVspHMEAjYwd3VRAo0u3T9ufs
	oWbEZyDlAmKzHaOIRKsha1INpbDquJe048clDyCvEkKxa9zZQ6DL3LgjCKFQf976r4E53ihZ0Y2IC
	mdy9V+B3LrxSH7/lT4B8CpzeeO706G1n6U963oHuajVpOm06xpj4P2ekM1Foc59TC3bwOO/2B1FBW
	2JhV6VIGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCT7U-0006Yh-Ki; Thu, 12 Mar 2020 19:03:48 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCT7Q-0006XE-Kz
 for linux-riscv@lists.infradead.org; Thu, 12 Mar 2020 19:03:46 +0000
Received: by mail-wr1-x444.google.com with SMTP id a25so8948876wrd.0
 for <linux-riscv@lists.infradead.org>; Thu, 12 Mar 2020 12:03:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CcAKyStScOON5qpzqj5TUiGNnuh9vk4Y01m4kaTEnkI=;
 b=UJ/OWs0oDeC0/xtrN6CaLYQKti3I9jTine3cx98VHFW6/tyJd9zLnxqYQxldZSwHVW
 EB+gj7r2WXBb+tlOe/Oy50fzGXEivGxoFtCSWFP6z9gE2IFXBCTMY1xTyz+Ibeiou06x
 bBHlU/gH94sRgdRrx/3Rp0MHa/iNt4vMjvzUv+c/o+jL5GwbYmiJEDlZufEeWOLGil0n
 jsVhYB3IZQ8s87rxyL+WnC31kdKBMB1IiDDHzHno4TMnJN8g7A4YQLkKyRU2PbCocZn8
 dpjRggp5lC3vqip+TPuMx9xMS40183yh4GWbF7oQBn5nYfvmLoLNk0IBYjmlSt8PP3zP
 Sm4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CcAKyStScOON5qpzqj5TUiGNnuh9vk4Y01m4kaTEnkI=;
 b=g3vTbfs3wRirtwmafg4Y64bT7GfOgXtG93hNJMzB52xDztEz/rMM7qH9GFNnQvAuLA
 RlJ+PwPOWHcLXLaDfb3vLnHD4NQvls9pbzAm/WyB+NmH6zr9g4ohIN3roI5RQzX2Ojwp
 hJ5NlvQS1IOjuHp7W+wWq9NLgLYxPc3cgvQMLwpEsgrDv8olGgbloipdq2kBZhfnTMkj
 z4EC2L1NBigryRJcwjNjTgeT6nAOHsO8OSuJFhlzIuKmSOUklm4F6/sQBEsES4JkwSB0
 HDavh2qHyHu+c3X0HQSW+iOnAH0ZQXQ/7t9LI+Sb06KdqoQPjnFBIqAjAkG46yvItmBd
 yPUQ==
X-Gm-Message-State: ANhLgQ3FUoCMS+nDillim5R0KBkHdNjWN0hfbN9lXrAIm4QT/68DwQWz
 kx4PJw0RbZIwlMjwT0uxFrpwKP3M8wLkDEC3/QATcL0=
X-Google-Smtp-Source: ADFU+vtQUt0o9Cv4TMmxcPkqvgBQvpNkhMflXmqR77DAaBI2jZ7c3VopuTDDX2K0E8n2cd63kAL3PFN1SSK2lMfiTGs=
X-Received: by 2002:adf:f584:: with SMTP id f4mr13032731wro.77.1584039822299; 
 Thu, 12 Mar 2020 12:03:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200312051107.1454880-1-damien.lemoal@wdc.com>
 <20200312051107.1454880-8-damien.lemoal@wdc.com>
In-Reply-To: <20200312051107.1454880-8-damien.lemoal@wdc.com>
From: Atish Patra <atishp@atishpatra.org>
Date: Thu, 12 Mar 2020 12:03:31 -0700
Message-ID: <CAOnJCUKqfQ7qvWUpEsPWPH9ViXD6xrNpR2Gq9=0idPoWwvGx7Q@mail.gmail.com>
Subject: Re: [PATCH v2 7/9] riscv: Kendryte K210 default config
To: Damien Le Moal <damien.lemoal@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_120345_111132_096C89F1 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 10:11 PM Damien Le Moal <damien.lemoal@wdc.com> wrote:
>
> This patch adds a defconfig file to build No-MMU kernels meant for
> boards based on the Kendryte K210 SoC.
>
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> Reviewed-by: Anup Patel <anup@brainfault.org>
> Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
> ---
>  arch/riscv/configs/nommu_k210_defconfig | 68 +++++++++++++++++++++++++
>  1 file changed, 68 insertions(+)
>  create mode 100644 arch/riscv/configs/nommu_k210_defconfig
>
> diff --git a/arch/riscv/configs/nommu_k210_defconfig b/arch/riscv/configs/nommu_k210_defconfig
> new file mode 100644
> index 000000000000..00ded8f0bc55
> --- /dev/null
> +++ b/arch/riscv/configs/nommu_k210_defconfig
> @@ -0,0 +1,68 @@
> +# CONFIG_CPU_ISOLATION is not set
> +CONFIG_LOG_BUF_SHIFT=15
> +CONFIG_PRINTK_SAFE_LOG_BUF_SHIFT=12
> +CONFIG_BLK_DEV_INITRD=y
> +CONFIG_INITRAMFS_SOURCE="k210.cpio"

I don't think it is a common practice to provide a default rootfs file
in defconfig if it is not
part of the kernel. I may be wrong but I have not seen an example before.
It is expected that developers will generate their own rootfs and
modify it here.

It may also raise compiler errors for auto builders in absence of k210.cpio.

> +CONFIG_INITRAMFS_FORCE=y
> +# CONFIG_RD_BZIP2 is not set
> +# CONFIG_RD_LZMA is not set
> +# CONFIG_RD_XZ is not set
> +# CONFIG_RD_LZO is not set
> +# CONFIG_RD_LZ4 is not set
> +# CONFIG_BOOT_CONFIG is not set
> +CONFIG_CC_OPTIMIZE_FOR_SIZE=y
> +# CONFIG_SYSFS_SYSCALL is not set
> +# CONFIG_FHANDLE is not set
> +# CONFIG_BASE_FULL is not set
> +# CONFIG_EPOLL is not set
> +# CONFIG_SIGNALFD is not set
> +# CONFIG_TIMERFD is not set
> +# CONFIG_EVENTFD is not set
> +# CONFIG_AIO is not set
> +# CONFIG_IO_URING is not set
> +# CONFIG_ADVISE_SYSCALLS is not set
> +# CONFIG_MEMBARRIER is not set
> +# CONFIG_KALLSYMS is not set
> +CONFIG_EMBEDDED=y
> +# CONFIG_VM_EVENT_COUNTERS is not set
> +# CONFIG_COMPAT_BRK is not set
> +CONFIG_SLOB=y
> +# CONFIG_SLAB_MERGE_DEFAULT is not set
> +# CONFIG_MMU is not set
> +CONFIG_SOC_KENDRYTE=y
> +CONFIG_MAXPHYSMEM_2GB=y
> +CONFIG_SMP=y
> +CONFIG_NR_CPUS=2
> +CONFIG_CMDLINE="earlycon console=ttySIF0"
> +CONFIG_CMDLINE_FORCE=y
> +CONFIG_USE_BUILTIN_DTB=y
> +CONFIG_BUILTIN_DTB_SOURCE="kendryte/k210"
> +# CONFIG_BLOCK is not set
> +CONFIG_BINFMT_FLAT=y
> +# CONFIG_COREDUMP is not set
> +CONFIG_DEVTMPFS=y
> +CONFIG_DEVTMPFS_MOUNT=y
> +# CONFIG_FW_LOADER is not set
> +# CONFIG_ALLOW_DEV_COREDUMP is not set
> +# CONFIG_INPUT_KEYBOARD is not set
> +# CONFIG_INPUT_MOUSE is not set
> +# CONFIG_SERIO is not set
> +# CONFIG_LEGACY_PTYS is not set
> +# CONFIG_LDISC_AUTOLOAD is not set
> +# CONFIG_DEVMEM is not set
> +# CONFIG_HW_RANDOM is not set
> +# CONFIG_HWMON is not set
> +# CONFIG_VGA_CONSOLE is not set
> +# CONFIG_HID is not set
> +# CONFIG_USB_SUPPORT is not set
> +# CONFIG_VIRTIO_MENU is not set
> +# CONFIG_DNOTIFY is not set
> +# CONFIG_INOTIFY_USER is not set
> +# CONFIG_MISC_FILESYSTEMS is not set
> +CONFIG_LSM="[]"
> +CONFIG_PRINTK_TIME=y
> +# CONFIG_DEBUG_MISC is not set
> +# CONFIG_SCHED_DEBUG is not set
> +# CONFIG_RCU_TRACE is not set
> +# CONFIG_FTRACE is not set
> +# CONFIG_RUNTIME_TESTING_MENU is not set
> --
> 2.24.1
>
>


-- 
Regards,
Atish

