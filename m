Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64DC3827A2
	for <lists+linux-riscv@lfdr.de>; Tue,  6 Aug 2019 00:29:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O245tEdCBKE1P8SsiJ9mVK240jvqbxL0HWedPHDx1wU=; b=uLSbr+JdCJj9n0
	rVyiDXKp/bdFr8ovOC8/4AnrHzAFDg5fSPBqkkulUmxXGlA3oDleMdaCUl8wEQM7B4hLr7qV6Nn+c
	zgZQ5i31bGkHt99WWRutLP3jkYB059uqfT5fuAqxOZquZHSS923wi/XkNuzv6JEu4Ee8A3qHgxgzQ
	DhcUIZc2m676EL2kbSZCdJPnyHTh6kJSzNNnpAwHhN6GOfT/0NJidIiM1uB4qPA2N1+d/IAB4mbp6
	ub4t3ZYl82OA9rhsi20f3AP7f+q/+zgXWM3V5CyLqEWX2BWjP1XJFvIZUfXgD0Z94ASd2ZQ5F4xUD
	oECPhX/2gYyp0mU/pxrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hulTK-0001od-Ft; Mon, 05 Aug 2019 22:28:54 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hulTH-0001ns-2J
 for linux-riscv@lists.infradead.org; Mon, 05 Aug 2019 22:28:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565044131; x=1596580131;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=GbwaXyc6deWS7Q13bilS7fKXvkqP4CWMMzRaE5V8XDc=;
 b=n1E9I6TIUiJwAIYwJlfPrHsnroRJg0k/vndRzLQ+lbp1R4MH6Z7hj6ZT
 pPJCj2Kx46+j71YcBv0N4UZvkm0fqcMGmkL4oS9pXFonw6+1nG3h3uTx4
 +ucKNeqvL755DEYDk3uUtHWYF3d+qV2UgbvvsMNCIRU+TDLRrvNuJ6tBO
 pw0GXQ9b/C8pQfa+nahwu6T0dKIQEaeUPABoOx8mnTYVCtuLAb8tbLWU2
 zqwssYq8kFjn0pIskpPjR1WNP6R8vwpU6OY8ixNVURzjsJnqZ5QQSbAkC
 IzzaqZtunMWQjP10YGm6ZGmIbLTz68SBv6parTOLtjRx7w38Qj/+eyMyp A==;
IronPort-SDR: FyzQI4pgVWnZ3CPglP1mmnz2h447q8Q2bNk5IxzzXgr9HmCAb9hyAN1LrngnJXrAl9JZzvkdRG
 je/W2a+r3muv3df6XKqd8Y8zaGtf9NR4aTpBxj7V3/32CcmSe6mF0KWvtVbJ1dIh6tjrBE+4bZ
 Se5bacU+dtUcGzDXBQbHkN5CkqToDwq5TRvo3x/4SSDiHv8F/T36uCOIOkyCM/SkIYrmfVMttP
 Hm528xCfgVSR+1qthQ81SR+F+QR9RsxyoZbwg5w6KryDVyvAIR6tOX4RDJTvb2rZ5liiaCQOaM
 WbA=
X-IronPort-AV: E=Sophos;i="5.64,350,1559491200"; d="scan'208";a="119694697"
Received: from mail-co1nam03lp2053.outbound.protection.outlook.com (HELO
 NAM03-CO1-obe.outbound.protection.outlook.com) ([104.47.40.53])
 by ob1.hgst.iphmx.com with ESMTP; 06 Aug 2019 06:28:46 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CxzqM2ENFgBnNvsVivNj5v830fyMrZ+xDj1SzN7qrqorG8HxbBfJcCpUqidwGlEEKpkXydSqW1Bvqhoj7eETIQ9wn+2DBmOGGGckA2hEaQYeu20K/XtY6alE92ifKV0MB2Fn75rrqrSH7zr5tkNXfHkRU9QiZoA07RUN2oxkzJ8m0WJsXfWZjBe1xoi2NuzTWEGc4p4aMtiGorPwK21//OlNNxbHExCY04+ThJ+1ZnpD0uvtSwxHU9oeqT7T3LX6ENcyI+AcpWYOma62cFsFqLqgdiHAteZ8CVj68mSbqzn9vs+aAuArC229NgWPokxy7nNhzK+Y89ljEcpfGKT7nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GbwaXyc6deWS7Q13bilS7fKXvkqP4CWMMzRaE5V8XDc=;
 b=MBm/wO+f+pZ6LNPW595rZs6Adb9yUwJidqsnUwcqGjg6wKcujH7eOzvFK0cOzSUtE3TmNN6nyxL54pIUNs7MWrpLpcryLSe4uSWUNFe/AHPKGzO86kG1ff/kyDhR5NF3F2qwF5ihLrprvTmiWSIFNTgjSpccRdIxHOblBcnPDlw0KlbGKDtHGQyaJPipDfKLTYBw1xMqne0hH6mEPIXEtmdTuJhEDKC/O2r1Q3RAjemtUiaLOhe5URfEfd8/G1D67Yp6FxCtHUL14zYt76JS17kAwYXrU/nK5MXnsfC2wKUfoqY58/8l2l1rnY4ItbXLIxg21Dn+KoXcXOPdWuWwrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GbwaXyc6deWS7Q13bilS7fKXvkqP4CWMMzRaE5V8XDc=;
 b=g7qtDsz+jwlHzQrp+c8m9OvM3ZGJ+QFMXXUWzca4E6WFXKHrDIHva95LDfIameOayaVKcDNLNBGgBmqW5++7PB6Vx85DbgpTdMJTxmb5RUarmgLRBkIZcZxjeokiOnwV5/0FxTuCxibjLK3JkJzVY2FfBd9f3OHcHXra0cK1rUc=
Received: from BYAPR04MB3782.namprd04.prod.outlook.com (52.135.214.142) by
 BYAPR04MB4680.namprd04.prod.outlook.com (52.135.240.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Mon, 5 Aug 2019 22:28:41 +0000
Received: from BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::ac9a:967e:70a5:e926]) by BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::ac9a:967e:70a5:e926%7]) with mapi id 15.20.2115.005; Mon, 5 Aug 2019
 22:28:41 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "rkrcmar@redhat.com" <rkrcmar@redhat.com>, "pbonzini@redhat.com"
 <pbonzini@redhat.com>, "palmer@sifive.com" <palmer@sifive.com>, Anup Patel
 <Anup.Patel@wdc.com>
Subject: Re: [PATCH v3 00/19] KVM RISC-V Support
Thread-Topic: [PATCH v3 00/19] KVM RISC-V Support
Thread-Index: AQHVS5OiO2/2R/gnDkij9tcny5bgt6bsuBQAgABrBwA=
Date: Mon, 5 Aug 2019 22:28:41 +0000
Message-ID: <bdccb24f297242c2675cf6ccec3d434f7fe37ed6.camel@wdc.com>
References: <20190805134201.2814-1-anup.patel@wdc.com>
 <c8ea136f-b34b-c7b4-c319-93906fa595bd@redhat.com>
In-Reply-To: <c8ea136f-b34b-c7b4-c319-93906fa595bd@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 82ee0b3b-0913-4c04-c72e-08d719f444d4
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4680; 
x-ms-traffictypediagnostic: BYAPR04MB4680:
x-ms-exchange-purlcount: 4
x-microsoft-antispam-prvs: <BYAPR04MB468098B2382176A85CE38EDBFADA0@BYAPR04MB4680.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 01208B1E18
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(376002)(136003)(39860400002)(396003)(346002)(189003)(199004)(2616005)(99286004)(446003)(2906002)(36756003)(966005)(66446008)(2201001)(6436002)(6246003)(478600001)(6636002)(102836004)(6486002)(6506007)(53546011)(256004)(14444005)(25786009)(316002)(11346002)(3846002)(6116002)(76176011)(66556008)(2501003)(54906003)(476003)(8936002)(64756008)(486006)(71200400001)(186003)(26005)(6306002)(71190400001)(8676002)(4326008)(5660300002)(110136005)(68736007)(66946007)(6512007)(229853002)(81166006)(81156014)(7416002)(86362001)(118296001)(305945005)(76116006)(14454004)(53936002)(66476007)(7736002)(66066001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4680;
 H:BYAPR04MB3782.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: mGnh7MIOfYmP+pZM/CCgHIfbaZs6oyt20//rx386ENhlaP241NFu8LHcqBab3MNKc7y2KenYdxYWWWckXnz3NcHtxKnPCc85qukyoG5E2267DJLCoQlT9YcprB6cmpBduiwMb+pSMS00bilRovVU6JLeXSrbOmIweaK6SDSlR7lEj7WaeYu1kLX/1OqOHfDphh6MLJvtbbFbSueHo9v+aPD8Mp5aEtZH0lyaZcqjPr60hM8d21lhpZzi51wq2ySSx06rKetOYrbQ925QItcHpS9F6isoSsy4vwaOmHOKoadFYpGc5S+y5TFzw9DXrkBNvX/Rt5CHJQ+/YMU5OOMHHb+e+S1k2PuNygUG8FFjn8YuJIEFoc6hBV5ucEea+ID/XlVlFRi/WkQ+u8M59mwF/T9Id4kYn9W1iQZCwgbw6N0=
Content-ID: <7C0075443358074EBE1E9CEE69573423@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82ee0b3b-0913-4c04-c72e-08d719f444d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2019 22:28:41.2964 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Atish.Patra@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4680
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_152851_335240_84B9E48B 
X-CRM114-Status: GOOD (  19.76  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "hch@infradead.org" <hch@infradead.org>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 2019-08-05 at 18:05 +0200, Paolo Bonzini wrote:
> On 05/08/19 15:42, Anup Patel wrote:
> > This series adds initial KVM RISC-V support. Currently, we are able
> > to boot
> > RISC-V 64bit Linux Guests with multiple VCPUs.
> > 
> > Few key aspects of KVM RISC-V added by this series are:
> > 1. Minimal possible KVM world-switch which touches only GPRs and
> > few CSRs.
> > 2. Full Guest/VM switch is done via vcpu_get/vcpu_put
> > infrastructure.
> > 3. KVM ONE_REG interface for VCPU register access from user-space.
> > 4. PLIC emulation is done in user-space. In-kernel PLIC emulation,
> > will
> >    be added in future.
> > 5. Timer and IPI emuation is done in-kernel.
> > 6. MMU notifiers supported.
> > 7. FP lazy save/restore supported.
> > 8. SBI v0.1 emulation for KVM Guest available.
> > 
> > Here's a brief TODO list which we will work upon after this series:
> > 1. Handle trap from unpriv access in reading Guest instruction
> > 2. Handle trap from unpriv access in SBI v0.1 emulation
> > 3. Implement recursive stage2 page table programing
> > 4. SBI v0.2 emulation in-kernel
> > 5. SBI v0.2 hart hotplug emulation in-kernel
> > 6. In-kernel PLIC emulation
> > 7. ..... and more .....
> > 
> > This series is based upon KVM pre-patches sent by Atish earlier
> > (https://lkml.org/lkml/2019/8/3/3) and it can be found in
> > riscv_kvm_v3 branch at:
> > https//github.com/avpatel/linux.git
> > 
> > Our work-in-progress KVMTOOL RISC-V port can be found in riscv_v1
> > branch at:
> > https//github.com/avpatel/kvmtool.git
> > 
> > We need OpenSBI with RISC-V hypervisor extension support which can
> > be
> > found in hyp_ext_changes_v1 branch at:
> > https://github.com/riscv/opensbi.git
> > 
> > The QEMU RISC-V hypervisor emulation is done by Alistair and is
> > available
> > in riscv-hyp-work.next branch at:
> > https://github.com/alistair23/qemu.git
> > 
> > To play around with KVM RISC-V, here are few reference commands:
> > 1) To cross-compile KVMTOOL:
> >    $ make lkvm-static
> > 2) To launch RISC-V Host Linux:
> >    $ qemu-system-riscv64 -monitor null -cpu rv64,h=true -M virt \
> >    -m 512M -display none -serial mon:stdio \
> >    -kernel opensbi/build/platform/qemu/virt/firmware/fw_jump.elf \
> >    -device loader,file=build-
> > riscv64/arch/riscv/boot/Image,addr=0x80200000 \
> >    -initrd ./rootfs_kvm_riscv64.img \
> >    -append "root=/dev/ram rw console=ttyS0 earlycon=sbi"
> > 3) To launch RISC-V Guest Linux with 9P rootfs:
> >    $ ./apps/lkvm-static run -m 128 -c2 --console serial \
> >    -p "console=ttyS0 earlycon=uart8250,mmio,0x3f8" -k ./apps/Image
> > --debug
> > 4) To launch RISC-V Guest Linux with initrd:
> >    $ ./apps/lkvm-static run -m 128 -c2 --console serial \
> >    -p "console=ttyS0 earlycon=uart8250,mmio,0x3f8" -k ./apps/Image
> > \
> >    -i ./apps/rootfs.img --debug
> > 
> > Changes since v2:
> > - Removed references of KVM_REQ_IRQ_PENDING from all patches
> > - Use kvm->srcu within in-kernel KVM run loop
> > - Added percpu vsip_shadow to track last value programmed in VSIP
> > CSR
> > - Added comments about irqs_pending and irqs_pending_mask
> > - Used kvm_arch_vcpu_runnable() in-place-of
> > kvm_riscv_vcpu_has_interrupt()
> >   in system_opcode_insn()
> > - Removed unwanted smp_wmb() in kvm_riscv_stage2_vmid_update()
> > - Use kvm_flush_remote_tlbs() in kvm_riscv_stage2_vmid_update()
> > - Use READ_ONCE() in kvm_riscv_stage2_update_hgatp() for vmid
> > 
> > Changes since v1:
> > - Fixed compile errors in building KVM RISC-V as module
> > - Removed unused kvm_riscv_halt_guest() and
> > kvm_riscv_resume_guest()
> > - Set KVM_CAP_SYNC_MMU capability only after MMU notifiers are
> > implemented
> > - Made vmid_version as unsigned long instead of atomic
> > - Renamed KVM_REQ_UPDATE_PGTBL to KVM_REQ_UPDATE_HGATP
> > - Renamed kvm_riscv_stage2_update_pgtbl() to
> > kvm_riscv_stage2_update_hgatp()
> > - Configure HIDELEG and HEDELEG in kvm_arch_hardware_enable()
> > - Updated ONE_REG interface for CSR access to user-space
> > - Removed irqs_pending_lock and use atomic bitops instead
> > - Added separate patch for FP ONE_REG interface
> > - Added separate patch for updating MAINTAINERS file
> 
> Down to one comment, which can be addressed when applying (though I'd
> prefer if you tested the one-token fix).
> 
> Palmer, Albert, can you give your Acked-by, especially for patches
> 2-3-18-19?
> 

We also need following pre-equisite patches to be reviewed and kvm
series should be merged on top of it.

https://patchwork.kernel.org/project/linux-riscv/list/?series=154889

At least we need 1 & 2 from above series for kvm series to work.

Regards,
Atish
> Thanks,
> 
> Paolo
> 
> > Anup Patel (14):
> >   KVM: RISC-V: Add KVM_REG_RISCV for ONE_REG interface
> >   RISC-V: Add hypervisor extension related CSR defines
> >   RISC-V: Add initial skeletal KVM support
> >   RISC-V: KVM: Implement VCPU create, init and destroy functions
> >   RISC-V: KVM: Implement VCPU interrupts and requests handling
> >   RISC-V: KVM: Implement KVM_GET_ONE_REG/KVM_SET_ONE_REG ioctls
> >   RISC-V: KVM: Implement VCPU world-switch
> >   RISC-V: KVM: Handle MMIO exits for VCPU
> >   RISC-V: KVM: Handle WFI exits for VCPU
> >   RISC-V: KVM: Implement VMID allocator
> >   RISC-V: KVM: Implement stage2 page table programming
> >   RISC-V: KVM: Implement MMU notifiers
> >   RISC-V: Enable VIRTIO drivers in RV64 and RV32 defconfig
> >   RISC-V: KVM: Add MAINTAINERS entry
> > 
> > Atish Patra (5):
> >   RISC-V: Export few kernel symbols
> >   RISC-V: KVM: Add timer functionality
> >   RISC-V: KVM: FP lazy save/restore
> >   RISC-V: KVM: Implement ONE REG interface for FP registers
> >   RISC-V: KVM: Add SBI v0.1 support
> > 
> >  MAINTAINERS                             |  10 +
> >  arch/riscv/Kconfig                      |   2 +
> >  arch/riscv/Makefile                     |   2 +
> >  arch/riscv/configs/defconfig            |  13 +
> >  arch/riscv/configs/rv32_defconfig       |  13 +
> >  arch/riscv/include/asm/csr.h            |  58 ++
> >  arch/riscv/include/asm/kvm_host.h       | 243 ++++++
> >  arch/riscv/include/asm/kvm_vcpu_timer.h |  32 +
> >  arch/riscv/include/asm/pgtable-bits.h   |   1 +
> >  arch/riscv/include/uapi/asm/kvm.h       |  98 +++
> >  arch/riscv/kernel/asm-offsets.c         | 148 ++++
> >  arch/riscv/kernel/smp.c                 |   2 +-
> >  arch/riscv/kernel/time.c                |   1 +
> >  arch/riscv/kvm/Kconfig                  |  34 +
> >  arch/riscv/kvm/Makefile                 |  14 +
> >  arch/riscv/kvm/main.c                   |  86 +++
> >  arch/riscv/kvm/mmu.c                    | 905
> > ++++++++++++++++++++++
> >  arch/riscv/kvm/tlb.S                    |  43 ++
> >  arch/riscv/kvm/vcpu.c                   | 969
> > ++++++++++++++++++++++++
> >  arch/riscv/kvm/vcpu_exit.c              | 556 ++++++++++++++
> >  arch/riscv/kvm/vcpu_sbi.c               | 119 +++
> >  arch/riscv/kvm/vcpu_switch.S            | 368 +++++++++
> >  arch/riscv/kvm/vcpu_timer.c             | 106 +++
> >  arch/riscv/kvm/vm.c                     |  86 +++
> >  arch/riscv/kvm/vmid.c                   | 111 +++
> >  drivers/clocksource/timer-riscv.c       |   8 +
> >  include/clocksource/timer-riscv.h       |  16 +
> >  include/uapi/linux/kvm.h                |   1 +
> >  28 files changed, 4044 insertions(+), 1 deletion(-)
> >  create mode 100644 arch/riscv/include/asm/kvm_host.h
> >  create mode 100644 arch/riscv/include/asm/kvm_vcpu_timer.h
> >  create mode 100644 arch/riscv/include/uapi/asm/kvm.h
> >  create mode 100644 arch/riscv/kvm/Kconfig
> >  create mode 100644 arch/riscv/kvm/Makefile
> >  create mode 100644 arch/riscv/kvm/main.c
> >  create mode 100644 arch/riscv/kvm/mmu.c
> >  create mode 100644 arch/riscv/kvm/tlb.S
> >  create mode 100644 arch/riscv/kvm/vcpu.c
> >  create mode 100644 arch/riscv/kvm/vcpu_exit.c
> >  create mode 100644 arch/riscv/kvm/vcpu_sbi.c
> >  create mode 100644 arch/riscv/kvm/vcpu_switch.S
> >  create mode 100644 arch/riscv/kvm/vcpu_timer.c
> >  create mode 100644 arch/riscv/kvm/vm.c
> >  create mode 100644 arch/riscv/kvm/vmid.c
> >  create mode 100644 include/clocksource/timer-riscv.h
> > 
> > --
> > 2.17.1
> > 

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
