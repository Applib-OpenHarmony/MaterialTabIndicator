
export class TabBarOptions{
  private id: number = -1
  private name: string | Resource = ""
  private icon: Resource = null

  constructor(id: number, name: string | Resource, icon: Resource){
    this.id = id
    this.name = name
    this.icon = icon
  }

  getId(): number{
    return this.id
  }

  getName(): string | Resource{
    return this.name
  }

  getIcon(): Resource{
    return this.icon
  }
}